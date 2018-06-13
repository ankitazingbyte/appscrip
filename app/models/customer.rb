class Customer < ApplicationRecord
	mount_uploader :image, ImageUploader
end
