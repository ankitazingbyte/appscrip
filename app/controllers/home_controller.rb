class HomeController < ApplicationController
	
	def index
		@demands = Demand.all
		@contact = Contact.new
	end

	def faq
		@faqs = Faq.all
		@contact = Contact.new
	end

	def about
		@teams = Team.all
		@contact = Contact.new
	end

	def landing
		@contact = Contact.new
	end
	
	def howitwork
		@contact = Contact.new
	end

end
