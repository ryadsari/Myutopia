class PagesController < ApplicationController
  skip_before_action :authenticate_user! , only: [:home]
  skip_before_action :authenticate_character!

  def home

  end
end
