Rails.application.routes.draw do
  get 'post/new'
  get 'post/create'
  get 'post/index'
  get 'static_pages/home'
  root "post#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :sessions, only: [:new, :create, :destroy]
  match '/signin',  to: 'sessions#new', via: 'get'
  match '/signout', to: 'sessions#destroy', via: 'delete'
  resources :post, only: [:new, :create, :index]
  match '/post/new',  to: 'post#new', via: 'post'
  match '/post/create',  to: 'post#create', via: 'post'
end
