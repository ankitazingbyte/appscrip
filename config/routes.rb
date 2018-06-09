Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  root 'home#index'
  get 'home/faq'
  get 'home/about'
  get 'home/landing'
  get 'home/howitwork'
  get 'home/contact'
  namespace :admin do
    get 'dashboard/index'
    root 'dashboard#index'
    resources :faqs
    resources :products
    resources :services
    resources :contacts
    resources :ecommerces
    resources :socials
    resources :demands
    resources :teams
  end
end
