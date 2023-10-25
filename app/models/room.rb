class Room < ApplicationRecord
  validates :capacity, numericality: { greater_than: 0 }
  validates :capacity, presence: true
  validates :capacity, numericality: { only_integer: true }
  validates :price_per_night, numericality: { greater_than: 0 }

  has_many :users, through: :bookings
  has_many :bookings, dependent: :destroy
  belongs_to :hotel
end
