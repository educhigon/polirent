class BookingsController < ApplicationController

  def my_bookings
    user_id = 15 # later current_user.id
    @bookings = Booking.where(user_id: user_id)
  end

  def politicians_bookings_index
    @politician = Politician.find(params[:id])
    @bookings = @politician.bookings
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking.new(booking_params)
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
  end

end





# bookings	GET	politicians/id/bookings	#politicians_bookings_index	List of booking one poli
# 	GET	bookings/my_bookings	#my_bookings	List of my bookings
# 	PATCH	bookings/id/rejected	#update_request	Update
# 	PATCH	bookings/id/aproved	#update_request	Update
# 	POST	politicians/id/bookings	#create	Create a new booking
