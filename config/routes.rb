Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/home', to: 'pages#home'
  get '/stylesheet/chatroom', to: 'stylesheets#chatroom'
  # get '/dashboard', to: 'dashboards#index'
  resources :characters
  resources :character_sessions, only: [:new, :create]
  resources :chatrooms, only: [:show, :index, :new, :create] do
    resources :messages, only: :create
  end
end
