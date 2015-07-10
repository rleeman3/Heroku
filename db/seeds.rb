# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
puts "Generating flash sales..."

Post.delete_all
Post.create!  restaurant_name: 'Vovo Telo', start_time: '8pm', end_time: '10pm', deal: 'Buy 5 bagels for R20'
Post.create!  restaurant_name: 'Knead', start_time: '6pm', end_time: '7pm', deal: 'Buy a loaf of bread and get 2 free'
Post.create!  restaurant_name: 'iXperience', start_time: '6pm', end_time: '8pm', deal: '1 Coupon, 2 Coffees'
Post.create!  restaurant_name: 'Randys', start_time: '8pm', end_time: '10pm', deal: 'Muffins 75% off'
Post.create!  restaurant_name: 'Societi Bistro', start_time: '10pm', end_time: '12pm', deal: 'Two salads for R50'


User.create! restaurant: 'Yours Truly', email: 'yours@truly.com', password: 'hihihihi', password_confirmation: 'hihihihi', address: '73 Kloof St, Gardens, Cape Town, 8001' 
User.create! restaurant: 'iXperience', email: 'ix@perience.com', password: 'hihihihi', password_confirmation: 'hihihihi', address: '19 Park Rd, Gardens, Cape Town, 8001'
User.create! restaurant: 'Knead Bakery', email: 'knead@bakery.com', password: 'hihihihi', password_confirmation: 'hihihihi', address: 'Shop 16, Lifestyle Centre, 50 Kloof St, Gardens, Cape Town, 8001'
User.create! restaurant: 'Randys', email: 'randys@randys.com', password: 'hihihihi', password_confirmation: 'hihihihi', address: '107 Main Road, Green Point, Cape Town, 8005'
User.create! restaurant: 'Societi Bistro', email: 'societi@bistro.com', password: 'hihihihi', password_confirmation: 'hihihihi', address: '50 Orange St, Gardens, Cape Town, 8001'