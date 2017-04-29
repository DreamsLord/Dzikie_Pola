class FightersController < ApplicationController

	protect_from_forgery with: :null_session

	def choose_players_to_fight
		@fighters = params[:player]



	end
end