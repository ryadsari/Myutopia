Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/stylesheet/chatroom', to: 'stylesheets#chatroom'
  resources :characters
  get '/home', to: 'pages#home'
  get '/dashboard', to: 'dashboards#index'
  resources :characters do
    resources :roleplays
    resources :chatrooms, only: [:index, :new, :create]
    resources :worlds
  end

  resources :chatrooms, only: [:show, :index] do
    resources :messages, only: :create
  end
end
