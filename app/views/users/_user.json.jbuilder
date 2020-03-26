json.extract! user, :id, :email, :name, :address, :phone, :latitude, :longitude, :created_at, :updated_at
json.url user_url(user, format: :json)
