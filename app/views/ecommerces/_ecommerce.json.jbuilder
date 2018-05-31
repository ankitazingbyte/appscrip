json.extract! ecommerce, :id, :title, :description, :image, :created_at, :updated_at
json.url ecommerce_url(ecommerce, format: :json)
