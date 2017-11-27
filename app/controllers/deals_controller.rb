class DealsController < ApplicationController
  before_action :set_deal, only: [:create, :destroy]

  def index
    @deals = Deal.where(params[:user_id] = current_user)
  end

  def create
    @deal = deal.new(deal_params)
    if @deal.save
      redirect_to deal_path(@deal)
    else
      render :new
    end
  end

  def destroy
    @deal.destroy
    redirect_to deals_path
  end

 private

  def set_deal
    @deal = deal.find(params[:id])
  end

  def deal_params
    params.require(:deal).permit(:start_date, :end_date, :alibi_id, :user_id)
  end
end
