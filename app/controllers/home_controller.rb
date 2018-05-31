class HomeController < ApplicationController
	def index
		@demands = Demand.all
	end
end
