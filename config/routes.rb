Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :items do
    resources :claims, only: [:new, :create, :destroy]
  end
  resources :conversations do
    resources :messages
  end
  get 'dashboard', to: 'pages#dashboard'
  post 'accept/:id', to: 'claims#accept', as: :accept_claim
  post 'deny/:id', to: 'claims#deny', as: :deny_claim
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
