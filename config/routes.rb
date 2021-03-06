Rails.application.routes.draw do
  devise_for :users
  resources :requests
  resources :proposals
  resources :users
  resources :services
  get '/', to: 'pages#index', as: 'pages_index'
  root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
