Rails.application.routes.draw do

  get 'bibles/index'
  root to: 'home#index'
  resources :faith, only: [:index, :scriptures]
  resources :about, :bibles, only: [:index]
  resources :email, only: [:index]

  namespace :admin do 
    resources :categories, :sermons, :users
  end

  get 'email/index'

end
