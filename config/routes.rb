Rails.application.routes.draw do
  root 'hommes#index'
  resources :hommes
  resources :fichiers
  resources :declars
  resources :typas
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
