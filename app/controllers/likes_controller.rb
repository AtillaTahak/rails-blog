class LikesController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    new_like = current_user.likes.new(
      post_id: @post.id
    )
    new_like.update_likes_counter
    if new_like.save
      redirect_to "/users/#{@post.user_id}/posts/#{@post.id}", notice: 'Liked!'
    else
      redirect_to "/users/#{@post.user_id}/posts/#{@post.id}", alert: 'Failed!'
    end
  end
end
