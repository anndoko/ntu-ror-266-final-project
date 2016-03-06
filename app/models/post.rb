class Post < ActiveRecord::Base
  belongs_to :user

  has_many :post_tagships
  has_many :tags, through: :post_tagships

  has_many :comments

  # Validation
  validates :topic, presence: true
  validates :post_text, presence: true
  validates :post_text, length: { maximum: 200 }
end