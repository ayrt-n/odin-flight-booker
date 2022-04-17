Rails.application.routes.draw do
  root 'flights#index'
  get '/flights', to: 'flights#index'

  resources :bookings, only: %i[new create show]
end
