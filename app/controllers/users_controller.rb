class UsersController < ActionController::Base
  layout 'application'

  def index; end

  def show
    #  @user = User.find(params[:id])
  end

  def list
    # @user = User.find(params[:id])
    # @posts = @user.posts
  end

  def posts
    # @user = User.find(params[:id])
    # @post = Post.find(params[:id])
  end
end
