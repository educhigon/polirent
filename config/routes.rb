Rails.application.routes.draw do
  devise_for :users


  root to: "politicians#index"
  get "politicians/owned", to: "politicians#owned", as: :my_politcians
  
  resources :politicians

  get "bookings/my_bookings", to: "bookings#my_bookings"
  get "politicians/:id/bookings", to: "bookings#politicians_bookings_index", as: :p_b_index
  post "politicians/:id/bookings/create", to: "bookings#create", as: :book
#   get "politicians/id/bookings/new", to: "bookings#new", as: :new_booking

  patch "bookings/:id/status_confirm", to: "bookings#status_confirm", as: :confirm
  patch "bookings/:id/status_reject", to: "bookings#status_reject", as: :reject
end
