class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @items = Item.where(claimed: false).last(4)
  end

  def dashboard
  end
end
