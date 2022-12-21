Rails.application.routes.draw do
  devise_for :users
  root to: "listings#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"

  resources :listings, only: %i[new create destroy show index edit update] do
    resources :bookings, only: %i[new create]
    resources :reviews, only: %i[new create index]
  end
  resources :bookings, only: %i[destroy index]
  # Namespace allows to dedicate pages and controller to modules of the table you are calling on
  namespace :my do
    resources :listings, only: %i[index]
  end
end
