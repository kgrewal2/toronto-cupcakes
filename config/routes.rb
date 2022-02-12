Rails.application.routes.draw do
  devise_for :users
  resources :cupcakes
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "cupcakes#index"
end
