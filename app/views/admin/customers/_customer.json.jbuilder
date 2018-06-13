json.extract! customer, :id, :name, :designation, :message, :image, :created_at, :updated_at
json.url customer_url(customer, format: :json)
