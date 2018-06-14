json.extract! contactpage, :id, :title, :subtitle, :phone, :address, :mail, :created_at, :updated_at
json.url contactpage_url(contactpage, format: :json)
