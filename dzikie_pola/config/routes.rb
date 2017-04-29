Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

resources :players
# resources :fighters


root 'players#index'
post 'fighters', to: 'fighters#choose_players_to_fight'
get 'fighters', to: 'fighters#show_choose_players'

end
