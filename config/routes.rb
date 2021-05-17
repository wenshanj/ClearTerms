Rails.application.routes.draw do
  # Semi-static page routes
  get 'home', to: 'home#index', as: :home
  get 'home/about', to: 'home#about', as: :about
  get 'home/help', to: 'home#help', as: :help
  get 'home/faq', to: 'home#faq', as: :faq
  get 'home/add_company', to: 'home#add_company', as: :add_company
  get 'home/search', to: 'home#search', as: :search

  resources :companies
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # You can have the root of your site routed with 'root'
  root 'home#index'
end
