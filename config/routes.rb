Rails.application.routes.draw do
  get 'article_search/index'
  resources :articles
  resources :article_search, only: [:index]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
