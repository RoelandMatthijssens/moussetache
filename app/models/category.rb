class Category < ActiveRecord::Base
	belongs_to :category_page, foreign_key: "category_page_id"
end
