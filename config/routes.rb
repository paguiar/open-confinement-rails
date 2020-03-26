Rails.application.routes.draw do
  resources :requests
  resources :proposals
  resources :users
  resources :services
  root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
