Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  resources :users, only: [:show, :index]
  resources :collections
  resources :posts
  patch 'collectionize/:id', to: 'posts#collectionize', as: 'collectionize'
  delete 'collections/:id', to: 'collections#destroy', as: 'delete_collection_path'
end
