class User < ActiveRecord::Base
  # nice you have some validations! legit. associations and other models look good.
  validates :username, presence: true, uniqueness: true
  validates :password_digest, presence: true
  has_secure_password
  has_many :posts
  has_many :comments
end
