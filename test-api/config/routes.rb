Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      # only routes for the index, show and create actions
      resources :products , only: [:index, :show, :create, :destroy]
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
