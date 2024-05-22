class Booking < ApplicationRecord
  belongs_to :politician
  belongs_to :user

  enum status: %i[pending confirmed rejected]

  before_validation :set_default_values

  private

  def set_default_values
    self.status ||= 0
  end

end
