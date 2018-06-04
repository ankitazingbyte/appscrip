Rails.application.routes.draw do
  devise_for :users
  resources :faqs
  resources :contacts
  resources :ecommerces
  resources :socials
  resources :demands
  get 'home/index'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :admin do
    get 'dashboard/index'
    root 'dashboard#index'
    get 'home/faq'
    resources :products
    resources :services
  end
end
