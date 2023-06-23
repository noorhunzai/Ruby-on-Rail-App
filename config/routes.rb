Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :users, only: [:create, :index] # Add `:index` to include the index action for users
  resources :posts, only: [:create, :index, :update, :destroy]
end

