class PlayersController < ApplicationController

	before_action :set_player, only: [:show, :edit, :update, :destroy]

	def set_player
		@player = Player.find(params[:id])
	end

	def index
		@players = Player.all
	end

	def show
	end

	def new
		@player = Player.new
	end

	def create
		@player = Player.new(player_params)
		if @player.save
			flash.now[:notice] = " dodano gracza"
			redirect_to players_path
		else
			flash.now[:error] = "nie udało sie dodać gracza"
			render :new
		end
	end

	def edit
	end

	def update
		if @player.update(player_params)
			if @player.save
				flash.now[:notice] = " zmodyfikowano gracza"
				redirect_to player_path
			else
				flash.now[:error] = "nie udało sie zmodyfikować gracza"
				render :edit
			end
		end
	end

		def destroy
			flash[:notice] = "usunięto gracza ID: #{player.id} name: #{player.name}"
			@player.destroy
		end

		def player_params
			params.require(:player).permit(:name, :surname, :typ, :nation, :age, :height, :weight, :faith, :faith_in_the_magic,:courage,:devotion,:amorous,:honour,:law_and_order,:wealth,:reputation, :strong, :ability, :sense, :wisdom, :fancy, :head, :fortune, :initiative, :hit, :stout, :sabre, :matchlock, :spear, :rapier)
		end

	end
