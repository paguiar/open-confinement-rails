json.extract! request, :id, :user_id, :service_id, :notes, :active, :created_at, :updated_at
json.url request_url(request, format: :json)
