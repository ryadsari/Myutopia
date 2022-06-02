class UsersController < ApplicationController
  skip_before_action :authenticate_user!
  skip_before_action :authenticate_character!
end
