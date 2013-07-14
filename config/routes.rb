Rainforest::Application.routes.draw do
  get "reviews/show"

  get "reviews/new"

  get "reviews/edit"

  resources :products do
    resources :reviews, :except => [:index]
  end
  resources :users, :only => [:new, :create]
  resources :sessions, :on => [:new, :create, :destroy]
end