Rails.application.routes.draw do
  root 'bookings#index'
  get '/signup', to: 'users#new'

  resources :bookings
end
