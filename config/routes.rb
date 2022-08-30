Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :boats do
    resources :bookings, only: [:new, :create]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :bookings, only: [:destroy]
  # Defines the root path route ("/")
  # root "articles#index"
end
