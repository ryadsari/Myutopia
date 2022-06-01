class CharactersController < ApplicationController
  before_action :set_character, only: [:show, :edit, :update, :destroy]
  before_action :skip_authorization, only: :index

  def index
    if params[:query].present?
      sql_query = " \
      characters.first_name ILIKE :query \
      OR characters.last_name ILIKE :query \
      "
      @characters = Character.where(sql_query, query: "%#{params[:query]}%")
    else
      @characters = current_user.characters
    end
  end

  def show?
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
      redirect_to characters_path
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
