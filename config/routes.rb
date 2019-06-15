Rails.application.routes.draw do

  root to: 'home#index'
  resources :home, only: [:index, :new, :create]
  resources :faith, only: [:index, :scriptures]
  resources :about, :bibles, :sermons, only: [:index, :show]
  resources :email, only: [:index]

  namespace :admin do
    resources :categories, :sermons, :abouts, :users
  end

  get 'email/index'

end
