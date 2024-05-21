Rails.application.routes.draw do
  devise_for :users

  root to: "politicians#index"
  resources :politicians

  get "bookings/my_bookings", to: "bookings#my_bookings"
  get "politicians/:id/bookings", to: "bookings#politicians_bookings_index"

end
