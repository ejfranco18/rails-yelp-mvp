Rails.application.routes.draw do
  namespace :admin do
    resources :restaurants, only: [:update, :destroy] do
      resources :reviews, only: [:update, :destroy]
    end
  end
  resources :restaurants, except: [:update, :destroy] do
    resources :reviews, only: [:new, :create]
  end
  resources :reviews, only: :show
end
