class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :likes
  after_save :update_post_counter

  private

  def update_post_counter
    author.increment!(:posts_counter)
  end

  def recent_comments
    comments.order(created_at: :desc).limit(5)
  end
  validates :title, presence: true, length: { in: 4..250 }
  validates :comment_count, presence: true, numericality: { only_integer: true }
  validates :like_counter, presence: true, numericality: { only_integer: true }
end
