Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'users/index', to: 'users#index', as: :all_players
  get 'users/:id', to: 'users#show', as: :one_player
  get 'users/:id/contracts/new', to: 'contracts#new', as: :add_contract
  patch 'users/:id/contracts/:id', to: 'contracts#update', as: :update_contract
  delete 'users/:id/contracts/:id', to: 'contracts#destroy', as: :destroy_contract
  get 'matches/my_matches', to: 'matches#my_matches', as: :my_matches
  get 'teams/my_teams', to: 'teams#my_teams', as: :my_teams
  get 'requests/my_requests', to: 'requests#my_requests', as: :my_requests
  get 'memberships/my_memberships', to: 'memberships#my_memberships', as: :my_memberships
  resources :teams do
    resources :requests
    post '/teams/:team_id/requests/:id', to: 'requests#accept_request', as: :accept_request
    resources :memberships
    resources :matches, only: [ :new, :create ]
  end
  resources :matches
  resources :fields, only: [ :show, :index ]
  patch '/matches/:id/accept_challenge', to: 'matches#accept_challenge', as: :accept_challenge
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
