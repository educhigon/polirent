class BookingsController < ApplicationController

  def my_bookings
    user_id = 15 # later current_user.id
    @bookings = Booking.where(user_id: user_id)
  end

  def politicians_bookings_index
    @politician = Politician.find(params[:id])
    @bookings = @politician.bookings
  end
end
