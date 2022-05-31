Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :characters
  get '/home', to: 'pages#home'
  # get '/dashboard/path', to: 'bookings#show'
  resources :characters do
    resources :roleplays
    resources :chatrooms, only: [:index, :new, :create]
    resources :worlds
  end

  resources :chatrooms, only: [:show, :index] do
    resources :messages, only: :create
  end
end
