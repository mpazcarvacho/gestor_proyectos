Rails.application.routes.draw do
  get 'pages/index'
  get 'pages/new'
  get 'pages/create'
  root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
