class HomeController < ApplicationController


	def main
		time = Time.now
		@time = time.strftime("%F %T")
	end


end
