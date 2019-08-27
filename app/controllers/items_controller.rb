class ItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.user = current_user
    if @item.save
      redirect_to item_path(@item)
    else
      render :new
    end
  end

  def show
    @item = Item.find(params[:id])
  end
  #   def update
  #   end

  #   def destroy
  #   end

  private

  def item_params
    params.require(:item).permit(:name, :description, :location, :photo, :question1, :question2, :question3)
  end
end
