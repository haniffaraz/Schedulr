class Provider < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :specialty, presence: true

  has_many :slots
  has_many :users, through: :slots
end
