Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :shirts, only: [:index, :show] do
  resources :reviews, only: :create
  end
  resources :orders, only: [:show, :create] do
  resources :payments, only: [:new, :create]
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
