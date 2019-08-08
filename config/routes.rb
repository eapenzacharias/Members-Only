Rails.application.routes.draw do
  root "posts#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :user, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  get '/signup', to: 'user#new'
  post '/signup', to: 'user#create'

  match '/signin',  to: 'sessions#new', via: 'get'
  delete '/signout', to: 'sessions#destroy'
  resources :posts, only: [:new, :create, :index]
end
