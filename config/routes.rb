Rails.application.routes.draw do
  resources :employees
  resources :devices
  resources :softwares
  resources :categories
  resources :manufacturers

  get 'search', :to => "search#index"

  # Defines the root path route ("/")
  root "dashboard#index"
end
