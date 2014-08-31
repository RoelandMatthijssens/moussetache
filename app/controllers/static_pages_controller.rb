class StaticPagesController < ApplicationController
	before_filter do
		@testimonies = Testimony.all
		@start_index = rand(@testimonies.length)
	end
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
