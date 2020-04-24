Rails.application.routes.draw do
  root 'users#index'
  get 'test', to:'users#working_fine'
end
