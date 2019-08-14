# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# AIRPLANES
Airplane.destroy_all

airplane1 = Airplane.create(name: '757', rows: 3, columns: 10)
airplane2 = Airplane.create(name: '747', rows: 3, columns: 10)
airplane3 = Airplane.create(name: '756', rows: 3, columns: 10)

# Check plane length
puts "Airplane count: #{Airplane.all.length}"
puts "Airplane names: #{Airplane.all.pluck("name")}"

# FLIGHT
Flight.destroy_all

flight1 = Flight.create(name: '1', available_seats: 30, origin: 'SYD', destination: 'MEL', date: '2019-08-20')
flight2 = Flight.create(name: '2', available_seats: 29, origin: 'HKG', destination: 'SIN', date: '2019-08-25')
flight3 = Flight.create(name: '3', available_seats: 28, origin: 'HKG', destination: 'MAS', date: '2019-08-20')

# Check flight length
puts "Fight count: #{Flight.all.length}"
puts "Flight names: #{Flight.all.pluck("name")}"

# Associate flight to plane
airplane1.flights << flight1
airplane2.flights << flight2
airplane3.flights << flight3

# Check flight relationship
puts "\nFlight1 airplane is: #{flight1.airplane.name}"
puts "Flight2 airplane is: #{flight2.airplane.name}"
puts "Flight3 airplane is: #{flight3.airplane.name}"

User.destroy_all
user1 = User.create(name: "Gopi", email: "gopi@ga.co", admin: true)
user2 = User.create(name: "Pleng", email: "pleng@ga.co", admin: false)
user3 = User.create(name: "Ludo", email: "ludo@ga.co", admin: false)

puts "\nUser count: #{User.all.length}"
puts "User names: #{User.all.pluck("name")}"



# RESERVATIONS
Reservation.destroy_all
reservation1 = Reservation.create({:rows => 1, :columns =>1 })
reservation2 = Reservation.create({:rows => 3, :columns =>10 })
reservation3 = Reservation.create({:rows => 2, :columns =>3 })

# Check reservation length
puts "\nReservation count: #{Reservation.all.length}"
puts "Reservation id: #{Reservation.all.pluck("id")}"


user1.reservations << reservation1
user2.reservations << reservation2
user3.reservations << reservation3

# Append reservations to flight
flight3.reservations << reservation1 << reservation2
flight2.reservations << reservation3

# Check reservation names
puts "\nReservation1 user name is: #{reservation1.user.name}; seat is rows: #{reservation1.rows} and col: #{reservation1.columns} for flight #{reservation1.flight.name}"
# Check reservation names
puts "\nReservation2 user name is: #{reservation2.user.name}; seat is rows: #{reservation2.rows} and col: #{reservation2.columns} for flight #{reservation2.flight.name}"

puts "\nReservation3 user name is: #{reservation3.user.name}; seat is rows: #{reservation3.rows} and col: #{reservation3.columns} for flight #{reservation3.flight.name}"
