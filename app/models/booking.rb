class Booking < ApplicationRecord
  belongs_to :politician
  belongs_to :user

  enum status: %i[pending confirmed rejected]

  before_validation :set_default_values

  validates :start_date, presence: true
  validates :end_date, presence: true
  validate :no_booking_overlap

  private

  def set_default_values
    self.status ||= 0
  end

  def no_booking_overlap
    overlapping_bookings = Booking.where(politician_id: self.politician_id)
                                  .where(status: 1)
                                  .where.not("
                                    ( start_date < ? AND end_date < ? ) OR
                                    ( ? > end_date AND ? > start_date)",
                                  self.start_date, self.end_date, self.start_date, self.end_date)

    if overlapping_bookings.exists?
      errors.add(:base, 'date overlap!')
    end
  end
end
