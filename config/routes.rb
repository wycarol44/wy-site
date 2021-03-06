Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  resources :themes do
    resources :colors
  end
  
  resources :meals
  
  root to: "home#index"
end
