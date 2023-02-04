Rails.application.routes.draw do
  root 'users#index'

  resources :users, ony: %i[index show] do
    resources :posts, only: %i[index show]
    # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

    # Defines the root path route ("/")
    # root "articles#index"
  end
end
