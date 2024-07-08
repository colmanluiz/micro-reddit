class User < ApplicationRecord
  has_many :posts
  has_many :comments
  has_one :profile

  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true
  # validates :password, presence: true, length: { minimum: 6 }
end
