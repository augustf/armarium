Rails.application.routes.draw do
  resources :collections
  resources :collection_items
  resources :coins
  resources :coin_types
  resources :books
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
