Rails.application.routes.draw do

  resources :posts do
    resources :comments
    resources :likes
  end

  resources :users do
    member do
      get :following, :followers
    end
  end

  # resources :users do
  #   resources :followers, :following
  # end

  resources :relationships

  post "/login", to: "auth#login"
  get "/auto_login", to: "auth#get_current_user"
  post "/following_posts", to: "users#following_posts"

end
