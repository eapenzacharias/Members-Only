Rails.application.routes.draw do
  get 'static_pages/home'
  root "static_pages#home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :sessions, only: [:new,:create,:distroy]
  match '/signin', to: 'sessions#new', via: 'get'
end
