Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
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
    resources :fontpages
    resources :customers
    resources :products
    resources :services
    resources :contacts
    resources :ecommerces
    resources :socials
    resources :demands
    resources :teams
    resources :howitworks
    resources :aboutus
    resources :contactpages
    resources :payments
    resources :licences
    resources :generals
    resources :video_uploads
    resources :icons
    resources :components
    resources :landings
  end
end
