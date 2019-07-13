Rails.application.routes.draw do
  root to: 'home#index'
  
  resources :faith, only: [:index, :scriptures]
  resources :about, :bibles, :sermons, only: [:index, :show]

  resources :emails, only: [:index]

  namespace :admin do
    resources :categories, :sermons, :abouts, :beliefs, :users
  end

  get 'emails/index'
  post 'emails/send_email_us'

end
