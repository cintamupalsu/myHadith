Rails.application.routes.draw do

  root 'dashboard#home'
  get  '/help' ,   to: 'dashboard#help'
  get  '/about',   to: 'dashboard#about'
  get  '/contact', to: 'dashboard#contact'
  get  '/signup',  to: 'users#new'
  
  #c8
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  #/c8
  resources :users
  resources :account_activations, only: [:edit]
end
