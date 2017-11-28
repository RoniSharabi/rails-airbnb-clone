class AlibisController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:index]

  before_action :set_alibi, only: [:show, :edit, :update, :destroy]

  def index
    @alibis = policy_scope(Alibi).where(location: params[:location]).where(category: params[:category])
  end

  def show
     @alibi = Alibi.find(params[:id])
     @deal = Deal.new
  end

  def new
    @alibi = Alibi.new
    authorize @alibi
  end

  def create
    @alibi = Alibi.new(alibi_params)
    @alibi.user = current_user
    authorize @alibi
    if @alibi.save
      redirect_to alibi_path(@alibi)
    else
      render :new
    end
  end

  def update
    @alibi.update(alibi_params)
    redirect_to alibi_path(@alibi)
  end

  def destroy
    @alibi.destroy
    redirect_to alibis_path
  end

 private

  def set_alibi
    @alibi = Alibi.find(params[:id])
    authorize @alibi
  end

  def alibi_params
    params.require(:alibi).permit(:title, :description, :price, :location, :category, :user_id, :photo)
  end
end
