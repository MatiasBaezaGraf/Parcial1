Rails.application.routes.draw do
  resources :directors
  resources :mem_hons
  resources :honors
  resources :categories
  resources :members
  resources :units
  resources :clubs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
