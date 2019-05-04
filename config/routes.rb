Rails.application.routes.draw do

  root to: 'home#index'
  resources :faith, only: [:index, :scriptures]
  resources :about, only: [:index]
  resources :email, only: [:index]

  namespace :admin do 
    resources :categories, :users
  end

  get 'email/index'

end
