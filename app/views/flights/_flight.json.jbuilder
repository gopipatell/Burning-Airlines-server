json.extract! flight, :id, :name, :origin, :destination, :date, :airplane_id, :available_seats, :created_at, :updated_at
json.airplane do
  json.extract! flight.airplane, :name
  json.extract! flight.airplane, :rows
  json.extract! flight.airplane, :columns
end
json.reservations flight.reservations do |reservation|
  json.user reservation.user.name
  json.rows reservation.rows
  json.columns reservation.columns
end
json.url flight_url(flight, format: :json)
