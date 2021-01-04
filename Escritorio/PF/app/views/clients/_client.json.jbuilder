json.extract! client, :id, :name, :rut, :adress, :contact, :created_at, :updated_at
json.url client_url(client, format: :json)
