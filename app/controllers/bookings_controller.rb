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

  def create
    @politician = Politician.find(params[:politician_id])
    @booking = Booking.new(user: current_user, politician: @politician, start_date: params[:booking][:start_date], end_date: params[:booking][:end_date] )
    if @booking.save
      redirect_to bookings_my_bookings_path, notice: "Booking created"
    else
      render :show, status: :unprocessable_entity
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

  def find_booking
    @booking = Booking.find(params[:id])
  end
end
