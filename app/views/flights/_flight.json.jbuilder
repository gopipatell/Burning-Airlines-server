json.extract! flight, :id, :name, :origin, :destination, :date, :airplane_id, :available_seats, :created_at, :updated_at
json.url flight_url(flight, format: :json)
