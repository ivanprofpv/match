Rails.application.routes.draw do
  resources :teams
  resources :players, only: %i[new create show]
  resources :achivments
  resources :games
  resources :player_statistics, only: %i[new create show]

  root to: 'teams#index'

  get '/top', to: 'player_statistics#show_top'
end
