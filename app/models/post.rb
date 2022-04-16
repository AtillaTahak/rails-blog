class Post < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: :user_id
  belongs_to :post

  after_save :update_likes_counter

  private

  def update_likes_counter
    Post.increment!(:likes_counter)
  end
end
