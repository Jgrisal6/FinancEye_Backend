Rails.application.routes.draw do
  resources :expenses
  resources :incomes
  resources :currencies
  resources :categories
  resources :lenders
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
