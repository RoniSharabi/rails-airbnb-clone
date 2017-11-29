Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :alibis, only: [ :new, :create, :show, :index ]do
    resources :deals, only: [:create, :destroy]
  end
  resources :deals, only: [:index]
end
