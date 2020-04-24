Rails.application.routes.draw do
  root 'chatrooms#index'
  get 'login', to: 'sessions#login'
  get 'logout', to: 'sessions#logout'
  post 'create', to: 'sessions#create'
end
