class ChatroomsController < ApplicationController
  before_action :set_character, only: [:new, :create]
  before_action :skip_authorization
  before_action :logged_in_character

  def show
    @chatroom = Chatroom.find(params[:id])
    @chatrooms = Chatroom.all
    @message = Message.new
  end

  def index
    if @character
      @chatroom = Chatroom.where(character_id: @character)
    else
      @chatrooms = Chatroom.all
    end
  end

  def new
    @chatroom = current_character.chatrooms.new
  end

  def create
    @chatroom = current_character.chatrooms.build(chatroom_params)
    if @chatroom.save
      flash[:success] = "Chatroom has been created!"
      redirect_to @chatroom
    else
      render 'new'
    end
  end

  def edit
    @chatroom = current_character.chatrooms.find(chatroom[:id])
  end

  def update
    @chatroom = current_character.chatrooms.find(params[:id])
    if @chatroom.update_attributes(chatroom_params)
      flash[:success] = "Chatroom updated"
      redirect_to @chatroom
    else
      render 'edit'
    end
  end

  def destroy
    @chatroom = current_character.chatrooms.find(params[:id])
    if @chatroom
      @chatroom.destroy
      flash[:success] = "Chatroom has been deleted"
    else
      flash[:alert] = "Error"
    end
    redirect_to root_path
  end

  private

  def chatroom_params
    params.require(:chatroom).permit(:name)
  end

  def set_character
    @character = Character.find(params[:character_id])
  end
end
