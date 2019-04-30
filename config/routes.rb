Rails.application.routes.draw do

  resources :posts do
    resources :comments
  end

  resources :users do
    member do
      get :following, :followers
    end
  end

  # resources :users do
  #   resources :followers, :following
  # end

  resources :relationships #only: [:create, :destroy]

end
