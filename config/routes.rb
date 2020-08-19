Rails.application.routes.draw do
  resources :restaurants, only: %i[index show edit update new create destroy] do
    resources :reviews, only: %i[new create]
  end

  resources :reviews, only: :destroy
  
  root to: 'restaurants#index'

end