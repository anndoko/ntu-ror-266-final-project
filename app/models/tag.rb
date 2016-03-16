class Tag < ActiveRecord::Base
  has_many :post_tagships
  has_many :posts, through: :post_tagships

  # Validation
  validates :tag_title, presence: true
end