class Booking < ApplicationRecord
  belongs_to :politician
  belongs_to :user

  enum status: %i[pending confirmed rejected]
end
