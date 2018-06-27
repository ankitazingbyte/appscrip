class HomeController < ApplicationController
	
	def index
		@demands = Demand.all
		@contact = Contact.new
		@socials = Social.all
		@ecommerces = Ecommerce.all
		@customers = Customer.all
		@fontpages = Fontpage.all
	end

	def faq
		@faqs = Faq.all
		@demands = Demand.all
		@contact = Contact.new
		@generals = General.all
		@licences = Licence.all
		@payments = Payment.all
	end

	def about
		@teams = Team.all
		@contact = Contact.new
		@aboutus = Aboutu.all
	end

	def landing
		@contact = Contact.new
		@landings = Landing.all
		@icons = Icon.all
		@features = Feature.all
	end
	
	def howitwork
		@contact = Contact.new
		@howitworks = Howitwork.all
	end
	def contact
		@contact = Contact.new
		@contactpages = Contactpage.all
	end
	def mappage
	end

end
