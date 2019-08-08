Rails.application.routes.draw do
  root "post#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :user, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  match '/signup',  to: 'user#new', via: 'get'
  match '/signin',  to: 'sessions#new', via: 'get'
  match '/signout', to: 'sessions#destroy', via: 'delete'
  resources :post, only: [:new, :create, :index]
end
