class ApplicationController < ActionController::Base
  def current_user
    @user_first = User.first
  end
end
