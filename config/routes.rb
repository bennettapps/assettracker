Rails.application.routes.draw do
  resources :employees
  resources :devices
  resources :softwares
  resources :categories
  resources :manufacturers
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "dashboard#index"
end