class UsersController < ActionController::Base
  layout 'application'

  def index
    @user1 = User.first
  end

  def show; end

  def list; end

  def posts; end
end
