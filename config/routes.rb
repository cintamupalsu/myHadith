Rails.application.routes.draw do
  get 'dashboard/home'
  get 'dashboard/help'
  get 'dashboard/about'
  get 'dashboard/contact'
  root 'dashboard#home'
end
