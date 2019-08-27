class ItemsController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index]

  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  #   def new
  #     @item = Item.new(item_params)
  #     @item.owner = current_user
  #     if @item.save
  #       redirect_to item_path(@item)
  #     else
  #       render :new
  #     end
  #   end

  #   def update
  #   end

  #   def destroy
  #   end

  # private

  # def item_params
  #   params.require(:item).permit(:name, :description, :location, :question1, :question2, :question3)
  # end
end
