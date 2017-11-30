class DealsController < ApplicationController
  before_action :set_deal, only: [:destroy]

  def index
    @deals = policy_scope(Deal).where(user: current_user)
    @offers = policy_scope(Deal).where(alibi: current_user.alibis)
  end

  def create
    @deal = Deal.new(deal_params)
    @deal.user = current_user
    @deal.alibi = Alibi.find(params[:alibi_id])
    @alibi = @deal.alibi
    authorize @deal
    if @deal.save
      redirect_to deals_path
    else
      render 'alibis/show'
    end
  end

  def destroy
    @deal.destroy
    if Deal.all.empty?
      redirect_to root_path
    else
      redirect_to deals_path
   end
  end

 private

  def set_deal
    @deal = Deal.find(params[:id])
    authorize @deal
  end

  def deal_params
    params.require(:deal).permit(:start_date, :alibi_id, :user_id, :duration, :discussion)
  end
end
