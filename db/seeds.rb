# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Reset/delete all db entries
Airport.delete_all
Flight.delete_all

# Seed new data
Airport.create(airport_code: "NYC")
Airport.create(airport_code: "SFO")
Airport.create(airport_code: "TOR")


airports = Airport.all
Flight.create(departure_id: airports[0].id, destination_id: airports[1].id, start_time: Time.now, duration: 5)
Flight.create(departure_id: airports[0].id, destination_id: airports[1].id, start_time: 1.hours.from_now, duration: 5)
Flight.create(departure_id: airports[0].id, destination_id: airports[1].id, start_time: 2.hours.from_now, duration: 5)
Flight.create(departure_id: airports[0].id, destination_id: airports[1].id, start_time: 2.days.from_now, duration: 5)
Flight.create(departure_id: airports[0].id, destination_id: airports[1].id, start_time: 2.days.from_now + 1.hour, duration: 5)
Flight.create(departure_id: airports[0].id, destination_id: airports[2].id, start_time: Time.now, duration: 1)
Flight.create(departure_id: airports[0].id, destination_id: airports[2].id, start_time: Time.now, duration: 1)
Flight.create(departure_id: airports[1].id, destination_id: airports[0].id, start_time: Time.now, duration: 5)
Flight.create(departure_id: airports[1].id, destination_id: airports[0].id, start_time: 1.hour.from_now, duration: 5)
Flight.create(departure_id: airports[1].id, destination_id: airports[2].id, start_time: Time.now, duration: 7)
Flight.create(departure_id: airports[1].id, destination_id: airports[2].id, start_time: 1.hour.from_now, duration: 7)
Flight.create(departure_id: airports[2].id, destination_id: airports[0].id, start_time: Time.now, duration: 1)
Flight.create(departure_id: airports[2].id, destination_id: airports[0].id, start_time: 2.day.from_now + 2.hours, duration: 1)
Flight.create(departure_id: airports[2].id, destination_id: airports[0].id, start_time: 2.days.from_now, duration: 1)
Flight.create(departure_id: airports[2].id, destination_id: airports[1].id, start_time: Time.now, duration: 7)
Flight.create(departure_id: airports[2].id, destination_id: airports[1].id, start_time: 2.days.from_now, duration: 7)
