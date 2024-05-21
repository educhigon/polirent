# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.destroy_all
Politician.destroy_all
Booking.destroy_all

a = User.create(email: "bob@gmail.com")
b = User.create(email: "alice@gmail.com")
c = User.create(email: "frank@gmail.com")

x = Politician.create(name: "Donald", location: "Berlin", cost: 55, description: "hi i'm donald", user_id: a)
y = Politician.create(name: "Angela", location: "Paris", cost: 111, description: "hi i'm angela", user_id: b)

Booking.create(politician_id: x, user_id: c, status: 0)
Booking.create(politician_id: y, user_id: a, status: 0)

p "seed done 😊"
