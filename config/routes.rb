Rails.application.routes.draw do
  devise_for :users

  root to: "politicians#index"
  resources :politicians



  get "bookings/my_bookings", to: "bookings#my_bookings"
  get "politicians/:id/bookings", to: "bookings#politicians_bookings_index"

  # Defines the root path route ("/")
  # root "posts#index"
end


# GET	politicians/id/bookings	#politicians_index	List of booking one poli
