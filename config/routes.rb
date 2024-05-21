Rails.application.routes.draw do
  devise_for :users

  root to: "politicians#index"
  resources :politicians



  get "bookings/my_bookings", to: "bookings#my_bookings"
  get "politicians/:id/bookings", to: "bookings#politicians_bookings_index", as: :p_b_index

  get "politicians/id/bookings/new", to: "bookings#new", as: :new_booking
  # post "politicians/id/bookings/new", to: "bookings#create"

  patch "bookings/:id/status_confirm", to: "bookings#status_confirm", as: :confirm
  patch "bookings/:id/status_reject", to: "bookings#status_reject", as: :reject

end
