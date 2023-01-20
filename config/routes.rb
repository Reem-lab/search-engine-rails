Rails.application.routes.draw do
  devise_for :users
  resources :articles
  resources :article_search, only: [:index]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # get 'article_search/index'
  # Defines the root path route ("/")
  # root "articles#index"
  root to: "home#index"
end
