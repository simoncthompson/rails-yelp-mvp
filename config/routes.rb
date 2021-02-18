Rails.application.routes.draw do
  root to: 'restaurants#index'
  resources :restaurants, except: [:edit, :update, :destroy] do
    resources :reviews, except: [:edit, :update, :destroy]
  end
end
