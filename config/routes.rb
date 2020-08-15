Rails.application.routes.draw do
  get 'proyects/index'
  get 'proyects/new'
  post 'proyects/create'
  root 'proyects#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
