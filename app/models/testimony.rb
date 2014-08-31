class Testimony < ActiveRecord::Base
	mount_uploader :image, ImageUploader
end
