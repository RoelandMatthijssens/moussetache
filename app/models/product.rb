class Product < ActiveRecord::Base
	belongs_to :category
	has_many :pricerows, :order => 'value ASC'
end
