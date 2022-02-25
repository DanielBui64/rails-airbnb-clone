Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :boats do
    resources :bookings, only: %i[create]
  end

  resources :bookings, only: %i[show destroy] do
    get 'confirm', to: :confirm
    get 'accept', to: :accept
  end

  resources :dashboard, only: %i[index]

  get 'dashboard/my_bookings', to: 'dashboard#my_bookings'
  get 'dashboard/my_boats', to: 'dashboard#my_boats'
end
