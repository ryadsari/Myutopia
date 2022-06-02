class DashboardsController < ApplicationController
  def index
    @characters = current_user.characters
    @chatrooms = Chatroom.all
  end
end
