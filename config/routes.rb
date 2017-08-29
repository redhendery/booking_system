Rails.application.routes.draw do
  root 'welcome#index'

  get    '/signup',  to: 'users#new'
  post   'signup',   to: 'users#create'
  get    '/signin',  to: 'sessions#new'
  post   '/signin',  to: 'sessions#create'
  delete '/signout', to: 'sessions#destroy'

  resources :bookings
  resources :users
end
