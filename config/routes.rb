Rails.application.routes.draw do
  # get 'dashboard/index'
  # get 'dashboard/my_bookings'
  # get 'dashboard/my_boats'
  # get 'booking/show'
  # get 'booking/create'
  # get 'booking/new'
  # get 'booking/destroy'
  # get 'booking/confirm'
  # get 'boats/index'
  # get 'boats/show'
  # get 'boats/edit'
  # get 'boats/update'
  # get 'boats/create'
  # get 'boats/new'
  devise_for :users
  root to: 'pages#home'

  resources :boats do
    resources :booking, only: %i[create new]
  end

  resources :booking, only: %i[show destroy] do
    get 'confirm', to: :confirm
  end

  resources :dashboard, only: %i[index]

  get 'dashboard/my_bookings', to: 'dashboard#my_bookings'
  get 'dashboard/my_boats', to: 'dashboard#my_boats'
end
