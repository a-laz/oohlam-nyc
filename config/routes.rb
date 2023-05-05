Rails.application.routes.draw do
  devise_for :views
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "home#index"

  get 'about', to: 'about#index'
  get 'order', to: 'order#index'
  get 'gallery', to: 'gallery#index'
  post 'gallery', to: 'gallery#create'
  delete 'gallery/:id', to: 'gallery#destroy', as: 'gallery_destroy'
end
