class ClaimsController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index]
  def new
    @item = Item.find(params[:item_id])
    @claim = Claim.new
  end

  def create
    @item = Item.find(params[:item_id])
    @claim = Claim.new(claim_params)
    @claim.user = current_user
    @claim.item = @item
    if @claim.save
      redirect_to @item
    else
      render :new
    end
  end

  def accept
    @claim = Claim.find(params[:id])
    @item = @claim.item
    @claim.update(accepted: "true")
    @item.update(claimed: true)
    redirect_to dashboard_path
  end

  def deny
    @claim = Claim.find(params[:id])
    @item = @claim.item
    @claim.update(accepted: "false")
    redirect_to dashboard_path
  end

  def destroy
    @item = Item.find(params[:item_id])
    claim = Claim.find(params[:id])
    claim.destroy
    redirect_to @item
  end

  private

  def claim_params
    params.require(:claim).permit(:answer1, :answer2, :answer3, :reward)
  end
end
