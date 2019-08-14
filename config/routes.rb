Rails.application.routes.draw do
  root 'posts#index'
  # resources :users, only: [:new, :create]
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  #post '/signin', to: 'sessions#create'
  resources :sessions, only: [:create]
  get '/signin', to: 'sessions#new'
  delete '/signout', to: 'sessions#destroy'

  resources :posts, only: [:new, :create, :index]
end
