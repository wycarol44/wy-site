Rails.application.routes.draw do
  devise_for :users

  resources :themes do
    resources :colors
  end
  
  root to: "home#index"
end
