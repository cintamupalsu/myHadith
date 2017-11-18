Rails.application.routes.draw do
  get 'users/new'

  root 'dashboard#home'
  get  '/help' ,   to: 'dashboard#help'
  get  '/about',   to: 'dashboard#about'
  get  '/contact', to: 'dashboard#contact'
  get  '/signup',  to: 'users#new'

end
