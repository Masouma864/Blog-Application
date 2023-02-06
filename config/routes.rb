Rails.application.routes.draw do
  root "users#index"
  # Defines the root path route ("/")
  # root "articles#index"
  get 'users/:id' => 'users#show', as: :user_id
  get 'users/:user_id/posts' => 'posts#index'
  get 'users/:user_id/posts/:id' => 'posts#show', as: :post_id
 
end
