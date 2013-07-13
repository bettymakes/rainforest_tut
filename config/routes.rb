Rainforest::Application.routes.draw do
  resources :products
  resources :users, :only => [:new, :create]
  resources :sessions, :on => [:new, :create, :destroy]
end