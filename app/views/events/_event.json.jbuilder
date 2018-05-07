json.extract! event, :id, :title, :body, :location, :date_event, :created_at, :updated_at
json.url event_url(event, format: :json)
