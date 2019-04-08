Rails.application.routes.draw do
  get 'email/index'
  root to: 'home#index'
  resources :faith, only: [:index, :scriptures]
  resources :about, only: [:index]
  resources :email, only: [:index]
end
