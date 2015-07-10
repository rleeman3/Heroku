# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
puts "Generating flash sales..."

Post.delete_all
Post.create!  restaurant_name: 'Vovo Telo', start_time: '8pm', end_time: '10pm', deal: 'Buy 5 bagels for R20'
Post.create!  restaurant_name: 'Knead', start_time: '6pm', end_time: '7:15pm', deal: 'Buy a loaf of bread and get two pastries free'
Post.create!  restaurant_name: 'iXperience', start_time: '6pm', end_time: '7:15pm', deal: 'FREE COFFEE.'

User.create! restaurant: 'Yours Truly', email: 'yours@truly.com', password: 'hihihihi', password_confirmation: 'hihihihi', address: '73 Kloof St, Gardens, Cape Town, 8001' 
User.create! restaurant: 'iXperience', email: 'ix@perience.com', password: 'hihihihi', password_confirmation: 'hihihihi', address: '19 Park Rd, Gardens, Cape Town, 8001'
User.create! restaurant: 'Knead Bakery', email: 'knead@bakery.com', password: 'hihihihi', password_confirmation: 'hihihihi', address: 'Shop 16, Lifestyle Centre, 50 Kloof St, Gardens, Cape Town, 8001'