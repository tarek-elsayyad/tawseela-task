# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

dummy_samples_users = User.create([{ name: 'Star Wars', mobile: "01000567589" }, { name: 'Lord of the Rings' , mobile: "01112995363"}])

dummy_samples_trips = Trip.create({ user_id: 1, starting_time: 1521376188, starting_latitude: 22.1, starting_longitude: 25.5, starting_address: "test street", estimated_arrival_time: 1521354588})