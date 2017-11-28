class AlibisController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  before_action :set_alibi, only: [:show, :edit, :update, :destroy]

  def index
    @alibis = Alibi.where(location: params[:location]).where(category: params[:category])
  end

  def show
  end

  def new
    @alibi = Alibi.new
  end

  def create
    @alibi = Alibi.new(alibi_params)
    @alibi.user = current_user

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
  end

  def alibi_params
    params.require(:alibi).permit(:title, :description, :price, :location, :category, :user_id)
  end
end
