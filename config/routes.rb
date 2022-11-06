Rails.application.routes.draw do
  get 'calculates/new'
  get 'calculates/create'

  resources :calculates, only: %i[new create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
