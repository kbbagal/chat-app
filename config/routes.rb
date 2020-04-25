Rails.application.routes.draw do
  root 'chatrooms#index'
  get 'login', to: 'sessions#login'
  delete 'logout', to: 'sessions#destroy'
  post 'login', to: 'sessions#auth'
end
