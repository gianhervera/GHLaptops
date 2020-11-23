Rails.application.routes.draw do
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :products, only: %i[index show]
  resources :categories, only: [:show]
  resources :searches
  resources :cart, only: %i[create destroy]
  root 'products#index'
end
