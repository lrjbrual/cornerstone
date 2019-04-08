Rails.application.routes.draw do
  namespace :admin do
    get 'categories/index'
    get 'categories/show'
    get 'categories/new'
    get 'categories/create'
    get 'categories/destroy'
  end
  get 'email/index'
  root to: 'home#index'
  resources :faith, only: [:index, :scriptures]
  resources :about, only: [:index]
  resources :email, only: [:index]
end
