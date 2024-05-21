class BookingsController < ApplicationController

  def my_bookings
    user_id = current_user.id # later current_user.id
    @user = User.all
    @bookings = Booking.where(user_id: user_id)

  end

  def politicians_bookings_index
  end
end
