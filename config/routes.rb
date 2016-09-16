Rails.application.routes.draw do
  resources :posts
  resources :sessions, only: [:new, :create, :destroy]
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  resources :users
  get 'page/index'
  get 'portfolio', to: 'portfolio#index', as: 'portfolio'
  get 'simplegrid', to: 'simplegrid#index', as: 'simplegrid'
  get 'bio', to: 'bio#index', as: 'bio'
  root 'page#index'
end
