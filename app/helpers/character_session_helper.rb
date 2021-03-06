module CharacterSessionHelper
  def character_log_in(character)
    session[:character_id] = character.id
  end

  def current_character
    if session[:character_id]
      @current_character ||= Character.find_by(id: session[:character_id])
    end
  end

  def character_logged_in?
    !current_character.nil?
  end

  def character_log_out
    session.delete(:character_id)
    @current_character = nil
  end

  def current_character?(character)
    character == current_character
  end

  def redirect_back_or(default)
    redirect_to(session[:forwarding_url] || default)
    session.delete(:forwarding_url)
  end

  def store_location
    session[:forwarding_url] = request.original_url if request.get?
  end
end
