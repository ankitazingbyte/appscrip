class HomeController < ApplicationController
	
	def index
		@demands = Demand.all
		@contact = Contact.new
		@socials = Social.all
		@ecommerces = Ecommerce.all
		@customers = Customer.all
	end

	def faq
		@faqs = Faq.all
		@demands = Demand.all
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
	def contact
		@contact = Contact.new
	end

end
