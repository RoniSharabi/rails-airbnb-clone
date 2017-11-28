Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :alibis do
    resources :deals, only: [:index, :create, :destroy]
  end
end
