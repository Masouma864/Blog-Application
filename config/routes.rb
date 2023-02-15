Rails.application.routes.draw do
  root "users#index", as: :start

  get 'users/:id' => 'users#show', as: :user_id

  # Posts
  get 'users/:user_id/posts' => 'posts#index', as: :all_post
  get 'users/:user_id/posts/new' => 'posts#new', as: :post_new
  post 'users/:user_id/posts/new' => 'posts#create', as: :post
  get 'users/:user_id/posts/:id' => 'posts#show', as: :post_id

  #Comments

  get 'users/:user_id/posts/:id/comments/new' => 'comments#new', as: :comments_new
  post 'users/:user_id/posts/:id/comments' => 'comments#create', as: :comment

  #likes
  get 'users/:user_id/posts/:idt' => 'likes#create', as: :likes_create
 
end
