class FightersController < ApplicationController

	protect_from_forgery with: :null_session

	def choose_players_to_fight
		loadIdFighters = params[:player] 
		@fighters = []
		loadIdFighters.each do |x|
			@fighters << Player.find(x.to_i)
		end



	end
end