class ChatroomsController < ApplicationController
  before_action :skip_authorization
  before_action :logged_in_character

  def show
    @chatroom = Chatroom.find(params[:id])
    @chatrooms = Chatroom.all
    @message = Message.new
  end

  def index
    if params[:category]
      @chatrooms = Chatroom.where(category: params[:category])
    elsif params[:query].present?
      sql_query = " chatrooms.name ILIKE :query "
      @chatrooms = Chatroom.where(sql_query, query: "%#{params[:query]}%")
    else
      @chatrooms = Chatroom.all
    end
    @categories = Chatroom.pluck(:category).uniq
  end

  def new
    @chatroom = Chatroom.new
    @categories = Chatroom.pluck(:category).uniq
  end

  def create
    @chatroom = Chatroom.new(chatroom_params)
    if @chatroom.save
      flash[:success] = "Chatroom has been created!"
      redirect_to chatrooms_path
    else
      render 'new'
    end
  end

  def edit
    @chatroom = Chatroom.find(params[:id])
  end

  def update
    @chatroom = Chatroom.find(params[:id])
    if @chatroom.update_attributes(chatroom_params)
      flash[:success] = "Chatroom updated"
      redirect_to @chatroom
    else
      render 'edit'
    end
  end

  def destroy
    @chatroom = Chatroom.find(params[:id])
    @chatroom.destroy
    flash[:success] = "Chatroom has been deleted"
    redirect_to dashboard_path
  end



  private

  def chatroom_params
    params.require(:chatroom).permit(:name, :category, :photo)
  end
end
