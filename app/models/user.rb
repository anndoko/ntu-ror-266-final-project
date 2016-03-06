class User < ActiveRecord::Base
  has_many :posts
  has_many :comments

  # Validation
  validates :name, presence: true
end