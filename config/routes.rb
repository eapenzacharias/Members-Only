Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :sessions, only: [:new,:create,:distroy]
  match '/signin', to: 'sessions#new', via: 'get'
end
