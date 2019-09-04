class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @items = Item.where(claimed: false).last(4)
  end

  def dashboard
    @users = User.all
    @send = Conversation.where(sender: current_user)
    @recipient = Conversation.where(recipient: current_user)
    @conversations = @send + @recipient

  end
end
