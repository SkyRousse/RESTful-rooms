Rails.application.routes.draw do
  devise_for :users
  root to: 'room#index'
  resources :rooms
  resources :profiles
end
