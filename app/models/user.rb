class User < ActiveRecord::Base
  has_many :posts
  has_many :comments

  has_secure_password validation: false

  # Validation
  validates :name, presence: true
  validates :name, uniqueness: true
  # Run the validation only when a new record is created
  validates :password, presence: true, on: :create
  validates :password, length: {minimum: 5}
end