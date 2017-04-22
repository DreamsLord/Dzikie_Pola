Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

resources :players


root 'players#index'
get 'fight', to: 'fight#choose_players_to_fight'

end
