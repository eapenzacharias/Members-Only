Rails.application.routes.draw do
  root 'posts#index'
  # resources :users, only: [:new, :create]
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  resources :sessions, only: [:new, :create, :destroy]
  get '/signin', to: 'sessions#new'
  delete '/signout', to: 'sessions#destroy'

  resources :posts, only: [:new, :create, :index]
end

# This is why we left both for sessions for some reason with one or the other removed it all crashes

=begin
This is the error with resourcs :sessions commented out

NameError in Sessions#new
Showing /home/leonz/Documents/MicroVerse/rubyonrails/Members-Only/app/views/sessions/new.html.erb where line #2 raised:

undefined local variable or method `sessions_path' for #<#<Class:0x00007fbc5e01a7a8>:0x00007fbc5e0184f8>
Did you mean?  session
Extracted source (around line #2):
1
2
3
4
5
6

<h1>Sign In</h1>
<%= form_for(:session, url: sessions_path) do |f| %>
 
  <%= f.label :email, "Email:" %>
  <%= f.email_field :email, placeholder: "user@mail.com" %><br/>
  <%= f.label :password, "Password:" %>

=end

=begin
This is the error when get and delte are commented out for sessions

Routing Error
No route matches [GET] "/signin"
Rails.root: /home/leonz/Documents/MicroVerse/rubyonrails/Members-Only

Application Trace | Framework Trace | Full Trace
Routes

=end