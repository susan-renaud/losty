class ClaimsController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index]
  def new
    @claim = Claim.new
  end

  def create
    @item = Item.find(params[:item_id])
    @claim = Claim.new(params[claim_params])
    @claim.user = @item
    if @claim.save
      redirect_to new_claim_path
    else
      redirect_to claims_path
    end
  end

  private

  def claim_params
    params.require(:claim).permit(:answer1, :answer2, :answer3)
  end
end
