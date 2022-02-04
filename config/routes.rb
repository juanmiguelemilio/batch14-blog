Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :articles

  # Defines the root path route ("/")
  root "articles#index"
  
  resources :articles do
    resources :comments
  end

  get '/articles' => 'articles#index'
  get '/articles/new' => 'articles#new'
  get "/articles", to: "articles#index"
  get "/articles/:id", to: "articles#show"

  post '/articles' => 'articles#create', as: 'article_create'
  
end
