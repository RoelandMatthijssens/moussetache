class CategoryPage < ActiveRecord::Base
	mount_uploader :image, ImageUploader
	has_many :categories
end
