Rails.application.routes.draw do
  resources :teams
  devise_for :users
  
  resources :contacts
  resources :ecommerces
  resources :socials
  resources :demands
  get 'home/index'
  root 'home#index'
  get 'home/faq'
  get 'home/about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'home/landing'
  namespace :admin do
    get 'dashboard/index'
    root 'dashboard#index'
    resources :faqs
    resources :products
    resources :services
  end
end
