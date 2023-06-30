Rails.application.routes.draw do
  # get 'hotels/index'
  # get 'hotels/show'
  # get 'hotels/new'
  # get 'hotels/create'
  # get 'hotels/delete'
  # get 'hotels/destroy'
  # get 'rooms/index'
  # get 'rooms/show'
  # get 'rooms/new'
  # get 'rooms/create'
  # get 'rooms/delete'
  # get 'rooms/destroy'
  # get 'bookings/index'
  # get 'bookings/show'
  # get 'bookings/new'
  # get 'bookings/create'
  # get 'bookings/delete'
  # get 'bookings/destroy'
  devise_for :users
  root to: "pages#home"

  resources :rooms do
    resources :bookings
  end

  resources :hotels do
    resources :rooms, only: [:new, :create]
  end

  get '/pages/dashboard'

end
