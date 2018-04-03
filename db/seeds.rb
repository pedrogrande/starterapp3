# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(email: 'seller2@gmail.com', password: '12345678', user_type: 'seller')
puts "User created: " + user.email
sp = SellerProfile.create!(name: "Pam's Quality Goods", :address => "13 Abercrombie Street", :suburb => "Chippendale", :state => "NSW", :postcode => "2008", :country => "AU", bio: "Pam sells only quality goods. You can find Pam searching the internet looking for the best deals for you.", user_id: user.id)

p1 = Product.create(seller_profile_id: sp.id, name: 'Google Home', description: "Google Home is a powerful speaker and voice Assistant. Play your music. Call your friends. Ask it questions. Control your home. It's your own Google, always ready to help.", price: 199.0, num_in_stock: 1000)
puts "Product created: " + p1.name

p2 = Product.create(seller_profile_id: sp.id, name: 'Chromecast Ultra', description: "Stream entertainment to your 4K Ultra HD TV in striking detail. No 4K TV? No problem. Chromecast Ultra automatically optimizes for the maximum your TV can deliver.", price: 99.0, num_in_stock: 800)
puts "Product created: " + p2.name

p3 = Product.create(seller_profile_id: sp.id, name: 'Pixel 2 XL', description: "The unlocked Pixel 2 provides a clean, bloat-free experience with no unwanted apps, one of the highest rated smartphone cameras, with free unlimited storage.", price: 999.0, num_in_stock: 100)
puts "Product created: " + p3.name


wz/CB8sopLuttL4r%V4VP3#?e
