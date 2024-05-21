Booking.destroy_all
Politician.destroy_all
User.destroy_all

a = User.create!(email: "bob@gmail.com", password: "password")
b = User.create(email: "alice@gmail.com", password: "password")
c = User.create(email: "frank@gmail.com", password: "password")

q = Politician.create!(name: "Frank", location: "Teheran", cost: 1111, description: "hi i'm frank", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2wu8c9s2L7K70iZOwAvdcy-XThLzZw_GAQYDOcAw-jbo30xvg", user_id: a.id)
v = Politician.create!(name: "Omid", location: "Teheran", cost: 500, description: "hi i'm omid", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2wu8c9s2L7K70iZOwAvdcy-XThLzZw_GAQYDOcAw-jbo30xvg", user_id: b.id)
w = Politician.create(name: "Lisa", location: "Rome", cost: 1, description: "hi i'm lisa", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2wu8c9s2L7K70iZOwAvdcy-XThLzZw_GAQYDOcAw-jbo30xvg", user_id: c.id)
x = Politician.create(name: "Donald", location: "Berlin", cost: 55, description: "hi i'm donald", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2wu8c9s2L7K70iZOwAvdcy-XThLzZw_GAQYDOcAw-jbo30xvg", user_id: a.id)
y = Politician.create(name: "Angela", location: "Paris", cost: 111, description: "hi i'm angela", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2wu8c9s2L7K70iZOwAvdcy-XThLzZw_GAQYDOcAw-jbo30xvg", user_id: a.id)
z = Politician.create(name: "Ali", location: "Berlin", cost: 200, description: "hi i'm ali", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2wu8c9s2L7K70iZOwAvdcy-XThLzZw_GAQYDOcAw-jbo30xvg", user_id: b.id)

Booking.create!(politician_id: x.id, user_id: c.id, status: 0)
Booking.create(politician_id: y.id, user_id: a.id, status: 0)
Booking.create(politician_id: y.id, user_id: c.id, status: 0)
Booking.create(politician_id: q.id, user_id: a.id, status: 0)
Booking.create(politician_id: x.id, user_id: c.id, status: 0)
Booking.create(politician_id: y.id, user_id: a.id, status: 0)
Booking.create(politician_id: y.id, user_id: b.id, status: 0)
Booking.create(politician_id: w.id, user_id: b.id, status: 0)

p "users: #{User.count}"
p "polis: #{Politician.count}"
p "bookings: #{Booking.count}"

p "seed done 😊"
