class RoleplaysController < ApplicationController
  before_action :authenticate_user!
  def show
    # @roleplays = Roleplay.all
    @user = current_user
    @roleplay = current_user.roleplay.last
    @roleplays = current_user.roleplays
    @character = current_user.roleplays.last.character
  end

  def new
    @roleplay = Roleplay.new
    @character = Character.find(params[:character_id])
  end

  def create
    @roleplay = Roleplay.new(roleplay_params)
    @roleplay.character = Character.find(params[:character_id])
    @roleplay.user = current_user
    if @roleplay.save
      redirect_to "#"
    else
      render 'roleplays/new'
    end
  end

  def destroy
    @roleplay = Roleplay.find(params[:id])
    @roleplay.destroy
    # redirect_to list_path(@roleplay.list)
  end

  private
  def set_roleplay
    @roleplay = Roleplay.find(params[:id])
  end

  def roleplay_params
    params.require(:roleplay).permit(:length)
  end
end
