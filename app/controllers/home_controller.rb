class HomeController < ApplicationController
	def index
		@demands = Demand.all
	end
	def faq
		@faqs = Faq.all
	end
end
