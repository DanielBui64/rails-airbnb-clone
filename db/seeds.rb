user1 = User.create!(first_name: "Stephane", last_name: "LaFontaine", phone_number: "514-123-4567", email: "steph@lf.ca", password: "mypassword", date_of_birth: Date.new(2001,2,3), owner: "true" )
file1 = URI.open('https://avatars.githubusercontent.com/u/37821714?v=4')
user1.photo.attach(io: file1, filename: 'dp.png', content_type: 'image/png')

user2 = User.create!(first_name: "Louis-Olivier", last_name: "Pelletier", phone_number: "514-987-6543", email: "louis@olivier.ca", password: "mypassword", date_of_birth: Date.new(2001,2,3), owner: "true")
file2 = URI.open('https://ca.slack-edge.com/T02NE0241-UL76L0VK6-8fcb30413697-512')
user2.photo.attach(io: file2, filename: 'dp.png', content_type: 'image/png')

user3 = User.create!(first_name: "Daniel", last_name: "Bui", phone_number: "514-123-4567", email: "daniel@bui.ca", password: "mypassword", date_of_birth: Date.new(2001,2,3), owner: "true")
file3 = URI.open('https://avatars.githubusercontent.com/u/96838847?v=4')
user3.photo.attach(io: file3, filename: 'dp.png', content_type: 'image/png')

user4 = User.create!(first_name: "Rabih", last_name: "Mteirek", phone_number: "514-123-4567", email: "rabih@m.ca", password: "mypassword", date_of_birth: Date.new(2001,2,3), owner: "false")
file4 = URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1643141012/mqc006hxlxwo670maxkl.jpg')
user4.photo.attach(io: file4, filename: 'dp.png', content_type: 'image/png')

user5 = User.create!(first_name: "Janaya", last_name: "Gripper", phone_number: "514-123-4567", email: "rabih@gripper.ca", password: "mypassword", date_of_birth: Date.new(2001,2,3), owner: "false")
file5 = URI.open('https://avatars.githubusercontent.com/u/70723606?v=4')
user5.photo.attach(io: file5, filename: 'dp.png', content_type: 'image/png')

boat1 = Boat.create!(name: "The Somino", make_model_year: "The Somino Super Yacht 2022", location: "290 Lakeshore Rd, Pointe-Claire, Quebec H9S 4L3", price_per_day: 100000, description: "The Somino Super Yacht boasts 39 apartments, 4 restaurants, 9 bars, a private pool along with a private Marina, helicopter pad and 170 crew members on board ready at your service.", capacity: 250, rating: 5, user: user1)
boat1_files = [File.open(Rails.root.join('app/assets/images/image1.png')), File.open(Rails.root.join('app/assets/images/image2.png')),
              File.open(Rails.root.join('app/assets/images/image3.png')), File.open(Rails.root.join('app/assets/images/image4.jpeg')),
              File.open(Rails.root.join('app/assets/images/image5.jpeg'))]
boat1.photos.attach(io: boat1_files[0], filename: 'boat1-1.png', content_type: 'image/png')
boat1.photos.attach(io: boat1_files[1], filename: 'boat1-2.png', content_type: 'image/png')
boat1.photos.attach(io: boat1_files[2], filename: 'boat1-3.png', content_type: 'image/png')
boat1.photos.attach(io: boat1_files[3], filename: 'boat1-4.png', content_type: 'image/jpeg')
boat1.photos.attach(io: boat1_files[4], filename: 'boat1-5.png', content_type: 'image/jpeg')

boat2 = Boat.create!(name: "Horizon", make_model_year: "E90 Horizon 2001", location: "9095 Boul Gouin O, Montréal, QC H4K 1C2", price_per_day: 5000, description: "E90 Horizon for rent, perfect condition seats 20, 10 bedrooms, 2 kitchens, 4 bathrooms.", capacity: 20, rating: 5, user: user1)
boat2_files = [File.open(Rails.root.join('app/assets/images/Boat1.jpeg')), File.open(Rails.root.join('app/assets/images/Boat1-1.jpeg'))]
boat2.photos.attach(io: boat2_files[0], filename: 'boat2-1.png', content_type: 'image/jpeg')
boat2.photos.attach(io: boat2_files[1], filename: 'boat2-2.png', content_type: 'image/jpeg')

boat3 = Boat.create!(name: "Speedo", make_model_year: "R56 2004", location: "10000 Boul Gouin O, Roxboro, QC H8Y 3K9", price_per_day: 9000, description: "R56 beautiful boat perfect for weekend getaways with the family and friends. Seats 40 people and has 13 bedrooms, 2 kitchens, 7 bathrooms.", capacity: 40, rating: 3, user: user3)
boat3_files = [File.open(Rails.root.join('app/assets/images/Boat2.jpeg')), File.open(Rails.root.join('app/assets/images/Boat2-1.jpeg'))]
boat3.photos.attach(io: boat3_files[0], filename: 'boat3-1.png', content_type: 'image/jpeg')
boat3.photos.attach(io: boat3_files[1], filename: 'boat3-2.png', content_type: 'image/jpeg')

boat4 = Boat.create!(name: "SeaRay", make_model_year: "SeaRay T56 2003", location: "4901 Rue du Collège - Beaubois, Pierrefonds, QC H8Y 3T4", price_per_day: 11000, description: "SeaRay T56 available, serious inquiries only! 9 bedrooms, 5 bathrooms, 1 kitchen.", capacity: 25, rating: 3, user: user3)
boat4_files = [File.open(Rails.root.join('app/assets/images/Boat3.jpeg')), File.open(Rails.root.join('app/assets/images/Boat3-1.jpeg'))]
boat4.photos.attach(io: boat4_files[0], filename: 'boat4-1.png', content_type: 'image/jpeg')
boat4.photos.attach(io: boat4_files[1], filename: 'boat4-2.png', content_type: 'image/jpeg')

boat5 = Boat.create!(name: "Rover", make_model_year: "Rover 599 2010", location: "90 Bd Arthur-Sauvé, Saint-Eustache, QC J7R 2H7", price_per_day: 12000, description: "Rover 599 ready for rent, 11 bedrooms, 3 bathrooms, 1 kitchen, and swimming pool.", capacity: 24, rating: 3, user: user1)
boat5_files = [File.open(Rails.root.join('app/assets/images/Boat4.jpeg')), File.open(Rails.root.join('app/assets/images/Boat4-1.jpeg'))]
boat5.photos.attach(io: boat5_files[0], filename: 'boat5-1.png', content_type: 'image/jpeg')
boat5.photos.attach(io: boat5_files[1], filename: 'boat5-2.png', content_type: 'image/jpeg')

boat6 = Boat.create!(name: "SuperFast", make_model_year: "SuperFast 812 2015", location: "125 Boul Labelle, Rosemère, QC J7A 2G9", price_per_day: 20000, description: "SuperFast 812 prepped and ready for long term rentals, serious and experience renters only please. Big living room area and spacious seating. 16 bedrooms, 5 bathrooms and 2 kitchens. ", capacity: 32, rating: 3, user: user3)
boat6_files = [File.open(Rails.root.join('app/assets/images/Boat5.jpeg')), File.open(Rails.root.join('app/assets/images/Boat5-1.jpeg'))]
boat6.photos.attach(io: boat6_files[0], filename: 'boat6-1.png', content_type: 'image/jpeg')
boat6.photos.attach(io: boat6_files[1], filename: 'boat6-2.png', content_type: 'image/jpeg')

boat7 = Boat.create!(name: "The GB", make_model_year: "GB550 2000", location: "6310 Bd des Mille-Îles, Laval, QC H7B 1B3", price_per_day: 8000, description: "G550. 10 bedrooms. 5 bathrooms and 1 kitchen. Swimming pool included.", capacity: 22, rating: 3, user: user3)
boat7_files = [File.open(Rails.root.join('app/assets/images/Boat6.jpeg')), File.open(Rails.root.join('app/assets/images/Boat6-1.jpeg'))]
boat7.photos.attach(io: boat7_files[0], filename: 'boat7-1.png', content_type: 'image/jpeg')
boat7.photos.attach(io: boat7_files[1], filename: 'boat7-2.png', content_type: 'image/jpeg')

boat8 = Boat.create!(name: "Speedo MK II", make_model_year: "Speedo MKII 2012", location: "9100 Bd des Mille-Îles, Laval, QC H7A 4C6", price_per_day: 1000, description: "Perfect sized boat for exploring! Rent for the weekend and get Monday Free! Bluetooth audio and GPS included.", capacity: 7, rating: 3, user: user1)
boat8_files = [File.open(Rails.root.join('app/assets/images/Boat7.jpeg'))]
boat8.photos.attach(io: boat8_files[0], filename: 'boat8-1.png', content_type: 'image/jpeg')

boat9 = Boat.create!(name: "Big Liner", make_model_year: "E78 Big Liner 2017", location: "380 Sussex Dr, Ottawa, ON K1N 9N4", price_per_day: 9500, description: "E78 Big Liner, 19 seater, 5 bedrooms, 3 floors and 3 bathrooms with 2 showers. Big living space and large kitchen perfect for cooking!", capacity: 19, rating: 3, user: user1)
boat9_files = [File.open(Rails.root.join('app/assets/images/Boat8.jpeg'))]
boat9.photos.attach(io: boat9_files[0], filename: 'boat9-1.png', content_type: 'image/jpeg')

# boat10 = Boat.create!(name: "LeDuckBoat", make_model_year: "Ducky Boat 3000", location: "5333 Av. Casgrain Suite 102, Montréal, QC H2T 1X3", price_per_day: 100, description: "Perfect boat for developers! Fits a team of 4. Perfect for doing long sessions of programming.", capacity: 4, rating: 3, user: user1)
# boat10_files = [File.open(Rails.root.join('app/assets/images/duck-boat.jpg'))]
# boat10.photos.attach(io: boat10_files[0], filename: 'boat10-1.png', content_type: 'image/jpg')

# Booking.create!(date_start: Date.new(2022, 2, 22), date_end: Date.new(2022, 2, 25), boat: boat1, user: user3)
# Booking.create!(date_start: Date.new(2022, 2, 25), date_end: Date.new(2022, 2, 28), boat: boat1, user: user4)
# Booking.create!(date_start: Date.new(2022, 3, 22), date_end: Date.new(2022, 3, 25), boat: boat2, user: user5)
