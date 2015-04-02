class Pricerow < ActiveRecord::Base
	belongs_to :product
	def prettyprint
		return "#{currency}%0.2f#{affix}"%value
	end
end
