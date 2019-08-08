Rails.application.routes.draw do
  get 'comments/create'
  root 'posts#index'
  get 'posts/index'
  get '/posts', to: 'posts#index'
  get '/users/:id/posts', to: 'users#show'
  get 'posts/show'
  get 'posts/new'
  get 'posts/edit'
  get 'posts/create'
  get 'posts/update'
  get 'posts/destroy'
  get 'sessions/new'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  delete '/signout', to: 'sessions#destroy'
  resources :users do
    resources :posts
  end

  resources :posts do
    resources :comments, module: :posts
  end

  resources :comments do
    resources :comments, module: :comments
  end

  get '/users/:id/posts/:post_id/comments/:comment_id/reply', to: "comments#new", as: "reply"
  
end