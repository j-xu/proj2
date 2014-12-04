Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  resources :users, only: [:show, :index] do
  	resources :collections
  end
  resources :posts
end
