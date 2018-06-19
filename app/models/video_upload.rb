class VideoUpload < ApplicationRecord
	mount_uploader :video, VideoUploader  
end
