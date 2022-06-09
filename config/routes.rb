Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/home', to: 'pages#home'
  get '/stylesheet/chatroom', to: 'stylesheets#chatroom'
  get '/dashboard', to: 'dashboards#index'
  resources :characters
  resources :character_sessions, only: [:new, :create]
  resources :chatrooms do
    resources :messages, only: :create
    resources :favourites, only: [:create]
    delete '/unfavourite', to: 'favourites#destroy'
  end
end
