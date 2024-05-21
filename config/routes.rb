Rails.application.routes.draw do
  devise_for :users

  root to: "politicians#index"

  get "bookings/my_bookings", to: "bookings#my_bookings"
  get "politicians/:id/bookings", to: "bookings#politicians_bookings_index"

  # Defines the root path route ("/")
  # root "posts#index"
end

#### TODO ::::
#   bookings	GET	politicians/id/bookings	#politicians_bookings_index	List of booking one poli
# 	GET	bookings/my_bookings	#my_bookings	List of my bookings
# 	PATCH	bookings/id/rejected	#update_request	Update
# 	PATCH	bookings/id/aproved	#update_request	Update
# 	POST	politicians/id/bookings	#create	Create a new booking
