class AlibisController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:index]

  before_action :set_alibi, only: [:show, :edit, :update, :destroy]

  def index
    @alibis = policy_scope(Alibi).where.not(latitude: nil, longitude: nil)
    # Pass query parameters to the index view in order to retrieve those parameters in the show view
    @location = params[:location]
    @category = params[:category]
    if @location != ""
      @alibis = @alibis.where(location: params[:location])
    end
    if @category != ""
      @alibis = @alibis.where(category: params[:category])
    end
     @markers = @alibis.map do |alibi|
      {
        lat: alibi.latitude,
        lng: alibi.longitude#,
        # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
      }
    end
  end

  def show
    @alibi = Alibi.find(params[:id])
    # Retrieve query parameters and pass them again to the view to manage the back action
    @category = params[:category]
    @location = params[:location]
    @deal = Deal.new

    @markers = [{
        lat: @alibi.latitude,
        lng: @alibi.longitude#,
        # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
      }]
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
