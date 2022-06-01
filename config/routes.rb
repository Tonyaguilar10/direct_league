Rails.application.routes.draw do
  devise_for :users
  get 'users/index', to: 'users#index', as: :all_players
  get 'users/:id', to: 'users#show', as: :one_player
  root to: 'pages#home'
  resources :teams do
    resources :matches, only: [ :new, :create ]
  end
  resources :matches
  resources :fields, only: [ :show, :index ]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
