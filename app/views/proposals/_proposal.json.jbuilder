json.extract! proposal, :id, :user_id, :service_id, :notes, :active, :created_at, :updated_at
json.url proposal_url(proposal, format: :json)
