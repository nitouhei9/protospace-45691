Rails.application.routes.draw do
  devise_for :users
  resources :prototypes, only: [:index, :new, :create, :show, :edit, :update, :destroy,]do
   resources :comments, only: [:create]
  end
  resources :users, only: [:show]
  root 'prototypes#index'
end