Rails.application.routes.draw do
  # devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :v1, defaults:{format: :json} do
    resources :contacts
    resources :sessions, only: [:create, :destroy]
    resources :users, only: [:create]
    resources :accounts, only: [:create, :update]

  end
end
