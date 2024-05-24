class Politician < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :delete_all
  has_many :users, through: :bookings
  has_one_attached :photo

  # Ensure tags are saved after politician is saved

  validates :name, presence: true, uniqueness: true
  validates :location, :cost, :description, presence: true
  validates :tags, inclusion: { in: ["sexy", "corrupt", "left", "center", "right"] }
  validates :cost, numericality: { only_integer: true }

  include PgSearch::Model

  pg_search_scope :search,
    against: [ :name, :location, :description ],
    using: {
      tsearch: { prefix: true }
    }
end
