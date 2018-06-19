class Landing < ApplicationRecord
	mount_uploader :image, ImageUploader
	mount_uploader :video, VideoUploader
end
