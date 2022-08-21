Rails.application.routes.draw do
  devise_for :users
  #root to: "pages#home"
  root to: 'users#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

    resources :users, only: [:index] do
    member do
      post :follow
      post :unfollow
    end
  end
end
