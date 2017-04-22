class FightController < ApplicationController

protect_from_forgery with: :null_session
	#before_action :set_player, only: [:show, :edit, :update, :destroy]

	def set_player
		@player = Player.find(params[:id])
	end

	def choose_players_to_fight
 @choose_players = Player.find(params[:check_player].to_i)
	end


	end
