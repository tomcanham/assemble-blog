Rails.application.routes.draw do
  devise_for :users
  authenticate :user do
    resources :posts, only: [:new, :create, :edit, :update, :destroy]
  end
  resources :posts, only: [:index, :show]

  get 'home/index'
  root to: 'home#index'
end
