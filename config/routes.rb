Rails.application.routes.draw do
  # devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :v1, defaults:{format: :json} do
    # resources :accounts, only: [:create, :update] do 
    #   resources :contacts
    # end
    # resources :sessions, only: [:create, :destroy]
    # resources :users, only: [:create]
    # resources :organizations

     resources :accounts, only: [:index, :create, :update] do 
      resources :contacts, only: [:index]
      resources :organizations, only: [:index, :create, :update, :Show] do 
        resources :contacts
      end
    end
    resources :sessions, only: [:create, :destroy]
    resources :users, only: [:create]   
  end
end
