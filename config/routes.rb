Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/stylesheet/chatroom', to: 'stylesheets#chatroom'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :characters
  get '/home', to: 'pages#home'

  resources :character_sessions, only: [:new, :create]


  resources :characters do
    resources :chatrooms, only: [:show, :index, :new, :create]
    resources :worlds
  end

  resources :chatrooms, only: [:show, :index] do
    resources :messages, only: :create
  end
end
