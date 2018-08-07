class Slot < ApplicationRecord
  belongs_to :provider
  belongs_to :user, optional: true
end
