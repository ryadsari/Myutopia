class ChatroomsController < ApplicationController
  before_action :set_character, only: [:new, :create]

  def show
    @chatroom = Chatroom.find(params[:id])
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
    @character = Character.find(params[:character_id])
    @chatroom = Chatroom.new
  end

  def create
    @chatroom = Chatroom.new(chatroom_params)
    @character = Character.find(params[:character_id])
    @chatroom.character = @character
    if @chatroom.save
      redirect_to character_path(@chatroom.character)
    else
      render 'new'
    end
  end

  def destroy
    @chatroom = Chatroom.find(params[:id])
    @chatroom.destroy
    redirect_to character_path(@chatroom.character)
  end

  private

  def chatroom_params
    params.require(:chatroom).permit(:name)
  end

  def set_character
    @character = Character.find(params[:character_id])
  end
end
