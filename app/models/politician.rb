class Politician < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :users, through: :bookings
  has_one_attached :photo

  validates :name, presence: true, uniqueness: true
  validates :location, :cost, :description, presence: true
  validates :cost,  numericality: { only_integer: true }
end
