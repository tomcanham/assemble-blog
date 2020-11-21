Rails.application.routes.draw do
  devise_for :users
  authenticate :user do
    resources :posts, only: [:index, :new, :create, :edit, :update, :destroy]
  end
  resources :posts, only: [:show] # keep standard resource-ful route jik
  get ':date_slug/:id', to: 'posts#show', constraints: { date_slug: /\d{4}-\d{2}-\d{2}/ }

  get 'home/index'
  root to: 'home#index'
end
