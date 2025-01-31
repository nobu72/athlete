Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#index'
  resources :tweets, only: [:index, :new,:create]
  resources :posts, only: [:new, :create, :show] do 
    resources :comments, only: :create
  end
  
end
