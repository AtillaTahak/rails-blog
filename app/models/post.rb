class Post < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: :user_id
  has_many :likes
  has_many :comments
  after_save :post_increase_counter
  def load_last_five_comments
    comment.order('created_at Desc').limit(5)
  end

  private

  def post_increase_counter
    author.increment!(:post_counter)
  end
end
