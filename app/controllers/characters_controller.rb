class CharactersController < ApplicationController
  before_action :set_character, only: [:show, :edit, :update, :destroy]
  before_action :skip_authorization, only: :index
  before_action :logged_in_character, only: [:show]
  skip_before_action :authenticate_character!

  def index
    @characters = current_user.characters
    if params[:query].present?
      sql_query = " characters.name ILIKE :query "
      @characters = @characters.where(sql_query, query: "%#{params[:query]}%")
    end
  end

  def show
    @character = Character.find(params[:id])
    authorize @character
  end

  def new
    @character = Character.new
    authorize @character
  end

  def destroy
    @character.destroy
    redirect_to characters_path
  end

  def create
    @character = Character.new(character_params)
    authorize @character
    @character.user = current_user
    if @character.save
      character_log_in @character
      flash[:success] = "You've created a new character!"
      redirect_to @character
    else
      render :new
    end
  end

  def edit
    @character = Character.find(params[:id])
  end

  def update
    @character = Character.find(params[:id])
    if @character.update(character_params)
      redirect_to character_path(@character)
    else
      render :new
    end
  end

  private

  def set_character
    @character = Character.find(params[:id])
  end

  def character_params
    params.require(:character).permit(:name, :world, :race, :photo)
  end
end
