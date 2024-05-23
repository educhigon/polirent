class BookingsController < ApplicationController
  before_action :find_booking, only: [:status_confirm, :status_reject]

  def my_bookings
    user_id = current_user.id # later current_user.id
    @user = User.all
    @bookings = Booking.where(user_id: user_id)
  end

  def politicians_requests_index
    @politician = Politician.find(params[:id])
    @bookings = @politician.bookings
  end

  # def new
  #   @booking = Booking.new
  # end

  def create
    @politician = Politician.find(params[:id])
    poli_id = params[:politician_id]
    user_id = current_user.id
    # status = 0
    booking = Booking.new(booking_params)
    booking.user = Booking.current_user.id
    booking.politician = @politician
    raise
    if booking.save
      # redirect_to politician_path(poli_id), notice: "Booking created"
      redirect_to bookings_my_bookings_path, notice: "Booking created"
    else
      render politician_path(poli_id), notice: "Booking failed"
    end
  end

  def status_confirm
    @booking = Booking.find(params[:id])
    @booking.status = 1
    @booking.save
    # redirect_to p_b_index_path(params[:id])
  end
  def status_reject
    @booking = Booking.find(params[:id])
    @booking.status = 2
    @booking.save
    # redirect_to p_b_index_path(params[:id])
  end

  private

  def booking_params
    params.require(:bookings).permit(:start_date, :end_date)
  end

  def find_booking
    @booking = Booking.find(params[:id])
  end
end
