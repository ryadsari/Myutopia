Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/home', to: 'pages#home'
  get '/stylesheet/chatroom', to: 'stylesheets#chatroom'
  get '/dashboard', to: 'dashboards#index'
  resources :characters



  resources :character_sessions, only: [:new, :create]

  resources :characters do
    resources :chatrooms, only: [:show, :index, :new, :create]
    resources :worlds
  end

  resources :chatrooms, only: [:show, :index] do
    resources :messages, only: :create
  end
end
