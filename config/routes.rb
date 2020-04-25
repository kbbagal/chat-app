Rails.application.routes.draw do
  root 'sessions#login'
  get 'login', to: 'sessions#login'
  get 'logout', to: 'sessions#logout'
  post 'create', to: 'sessions#create'
  get 'chatroom', to: 'chatrooms#index'
end
