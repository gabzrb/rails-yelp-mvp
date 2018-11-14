Rails.application.routes.draw do
  root to: 'restaurants#index'
    resources :restaurants do
    resources :reviews, only: [:index, :new, :create]
  end

  resources :reviews, only: [:show, :edit, :update, :destroy]

    namespace :admin do
    resources :restaurants, only: [:index]
  end
end
