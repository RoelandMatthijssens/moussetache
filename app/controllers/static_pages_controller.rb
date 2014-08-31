class StaticPagesController < ApplicationController
	def home
	end

	def soep
	end

	def groteHonger
	end

	def zoetigheden
	end

	def suggesties
	end

	def map
		render "map", :layout => false
	end

end
