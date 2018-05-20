json.extract! controller, :id, :User, :name, :email, :address, :zip, :created_at, :updated_at
json.url controller_url(controller, format: :json)
