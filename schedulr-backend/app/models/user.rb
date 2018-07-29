class User < ApplicationRecord
  has_many :slots
  has_many :providers, through: :slots
  has_secure_password

  validates :username, presence: true
  validates :username, uniqueness: true
  validates :password, length: {minimum: 6, maximum: 12}, on: :create
  validates :password_digest, presence: true
end
