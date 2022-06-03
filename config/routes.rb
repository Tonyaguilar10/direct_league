Rails.application.routes.draw do
  # get 'requests/index'
  # get 'requests/new'
  # get 'requests/create'
  # get 'requests/edit'
  # get 'requests/update'
  # get 'requests/destroy'
  devise_for :users
  get 'users/index', to: 'users#index', as: :all_players
  get 'users/:id', to: 'users#show', as: :one_player
  get 'matches/my_matches', to: 'matches#my_matches', as: :my_matches
  get 'teams/my_teams', to: 'teams#my_teams', as: :my_teams
  get 'requests/my_requests', to: 'requests#my_requests', as: :my_requests
  get 'memberships/my_memberships', to: 'memberships#my_memberships', as: :my_memberships
  root to: 'pages#home'
  resources :teams do
    resources :requests
    resources :memberships
    resources :matches, only: [ :new, :create ]
  end
  resources :matches
  resources :fields, only: [ :show, :index ]
  patch '/matches/:id/accept_challenge', to: 'matches#accept_challenge', as: :accept_challenge
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
