class UsersController < ActionController::Base
  layout 'application'

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def list; end

  def posts; end
end
