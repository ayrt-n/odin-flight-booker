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
Airport.create(airport_code: "OTT")
Airport.create(airport_code: "TOR")
Airport.create(airport_code: "VAN")
Airport.create(airport_code: "FL")

airports = Airport.all
Flight.create(departure_id: airports[0].id, destination_id: airports[1].id, start_time: Time.now, duration: 5)
Flight.create(departure_id: airports[0].id, destination_id: airports[2].id, start_time: Time.now, duration: 1)
Flight.create(departure_id: airports[0].id, destination_id: airports[5].id, start_time: Time.now, duration: 4)
Flight.create(departure_id: airports[2].id, destination_id: airports[0].id, start_time: Time.now, duration: 1)
Flight.create(departure_id: airports[2].id, destination_id: airports[3].id, start_time: Time.now, duration: 1)
Flight.create(departure_id: airports[2].id, destination_id: airports[5].id, start_time: Time.now, duration: 5)
