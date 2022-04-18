Rails.application.routes.draw do
  devise_for :models
  resources :users, only: %i[show index] do
    resources :posts, only: %i[show create new index]
  end
  devise_for :users
  root to: 'users#index'

  resources :posts do
    resources :comments, only: %i[create new]
    resources :likes, only: %i[create]
  end
end