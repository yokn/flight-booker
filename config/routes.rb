Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'flights#index'
  get 'search_flight', to: 'flights#search'
  resources :flights
  resources :airports
end
