class FavouritesController < ApplicationController
  def create
    @character = current_character
    @chatroom = Chatroom.find(params[:chatroom_id])
    @character.favorite(@chatroom)
    redirect_to request.referer
  end

  def destroy
    @character = current_character
    @chatroom = Chatroom.find(params[:chatroom_id])
    @character.unfavorite(@chatroom)
    redirect_to request.referer
  end
end
