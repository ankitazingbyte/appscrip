json.extract! video_upload, :id, :video, :created_at, :updated_at
json.url video_upload_url(video_upload, format: :json)
