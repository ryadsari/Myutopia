class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :authenticate_character!
  skip_before_action :authenticate_character!, if: :devise_controller?

  helper_method :current_character

  include Pundit
  include CharacterSessionHelper

  # Pundit: white-list approach.
  # after_action :verify_authorized, except: :index, unless: :skip_pundit?
  # after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?
  # @characters = policy_scope(Character).order(created_at: :desc)
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  # Uncomment when you *really understand* Pundit!
  # rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  # def user_not_authorized
  #   flash[:alert] = "You are not authorized to perform this action."
  #   redirect_to(root_path)
  # end

  private

  def authenticate_character!
    @current_character = Character.find_by(id: session[:character_id])

    redirect_to new_character_session_path if @current_character.nil?
  end

  def current_character
    @current_character
  end

  def logged_in_character
    unless character_logged_in?
      store_location
      flash[:danger] = "Please choose a character to roleplay with"
      redirect_to new_character_session_path
    end
  end

  def user_not_authorized
    flash[:alert] = "You are not authorized to perform this action."
    redirect_back(fallback_location: root_path)
  end

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end
end
