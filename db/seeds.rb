user1 = User.create!(first_name: "Stephane", last_name: "LaFontaine", phone_number: "514-123-4567", email: "steph@lf.ca", password: "mypassword", date_of_birth: Date.new(2001,2,3), owner: "true" )
user2 = User.create!(first_name: "Daniel", last_name: "Bui", phone_number: "514-123-4567", email: "daniel@bui.ca", password: "mypassword", date_of_birth: Date.new(2001,2,3), owner: "true")
user3 = User.create!(first_name: "David", last_name: "Homes", phone_number: "514-123-4567", email: "david@homes.ca", password: "mypassword", date_of_birth: Date.new(2001,2,3), owner: "false")
user4 = User.create!(first_name: "Rabih", last_name: "Jackson", phone_number: "514-123-4567", email: "rabih@jackson.ca", password: "mypassword", date_of_birth: Date.new(2001,2,3), owner: "false")

boat1 = Boat.create!(name: "LeBoat", make_model_year: "Yacht 2001", location: "Montreal", price_per_day: 1000, description: "Biggest boat in quebec!", capacity: 250, rating: 5, user: user1)
boat2 = Boat.create!(name: "LeSmallBoat", make_model_year: "Yacht 1960", location: "Montreal", price_per_day: 10, description: "Smallest boat in quebec!", capacity: 2, rating: 3, user: user3)
boat3 = Boat.create!(name: "The Somino", make_model_year: "The Somino Super Yacht 2022", location: "Montreal", price_per_day: 100000, description: "The Somino Super Yacht boasts 39 apartments, 4 restaurants, 9 bars, a private pool along with a private Marina, helicopter pad and 170 crew members on board ready at your service.", capacity: 250, rating: 5, user: user1)

Booking.create!(date_start: Date.new(2022,2,22), date_end: Date.new(2022,2,25), boat: boat1, user: user3)
Booking.create!(date_start: Date.new(2022,2,25), date_end: Date.new(2022,2,28), boat: boat1, user: user4)
Booking.create!(date_start: Date.new(2022,3,22), date_end: Date.new(2022,3,25), boat: boat2, user: user3)
