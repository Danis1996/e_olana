json.extract! user, :id, :nom, :is_admin, :nif, :created_at, :updated_at
json.url user_url(user, format: :json)
