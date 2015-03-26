class CategoryPage < ActiveRecord::Base
	mount_uploader :image, ImageUploader
end
