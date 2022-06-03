class CharacterSessionsController < ApplicationController
  skip_before_action :authenticate_character!

  def new
    @characters = current_user.characters
  end

  def create
    character = Character.find_by(id: params[:character_id])
    if character
      session[:character_id] = character.id
      redirect_to chatrooms_path
    else
      redirect_to new_character_session_path
    end
  end


  def destroy
    character_log_out
    redirect_to root_url
  end

  def log
  end
end
