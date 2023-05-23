Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/users", to: "users#index", as: 'user'
  get "/posts/new", to: "posts#new", as: 'posts_new'
  post "posts", to: 'posts#create', as: 'posts_create'
  get "/users/:id", to: "users#show", as: 'users'
  get "/users/:user_id/posts", to: "posts#index", as: 'user_posts'
  get "/users/:user_id/posts/:id", to: "posts#show", as: 'user_post'
  post "/posts/:post_id/comments", to: 'comments#create', as: 'comments_create'
  get "/posts/:post_id/comments/new", to: 'comments#new', as: 'new_comment'
end