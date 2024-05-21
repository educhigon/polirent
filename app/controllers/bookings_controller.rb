class BookingsController < ApplicationController

  def my_bookings
    user_id = 15 # later current_user.id
    @bookings = Booking.where(user_id: user_id)
  end

  def politicians_bookings_index
    @politician = Politician.find(params[:id])
    @bookings = @politician.bookings
  end

  # def new
  #   @booking = Booking.new
  # end

  def create
    poli_id = params[:id]
    user_id = current_user.id
    status = 0
    x = { politician_id: poli_id, user_id: user_id, status: status}
    booking = Booking.new(x)

    if booking.save
      redirect_to politician_path(poli_id), notice: "Booking created"
    else
      render politician_path(poli_id), notice: "Booking failed"
    end
  end

  def status_confirm
    # raise
    @booking = Booking.find(params[:id])
    @booking.status = 1
    @booking.save
    redirect_to p_b_index_path(params[:id])
  end

  def status_reject
    @booking = Booking.find(params[:id])
    @booking.status = 2
    # raise
    @booking.save
    redirect_to p_b_index_path(params[:id])
  end

  private

  def booking_params
    # dont need this? only params[:id] everything else is given
  end
end
