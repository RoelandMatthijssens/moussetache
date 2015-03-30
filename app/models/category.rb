class Category < ActiveRecord::Base
	belongs_to :category_page, foreign_key: "category_page_id"
	has_many :products
end
