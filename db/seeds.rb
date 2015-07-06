# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
puts "Generating restaurants..."
Restaurant.delete_all
Restaurant.create! = resturant_name: 'Vovo Telo', street_address: '60 B. Kloof St.', city: 'Cape Town', state: 'SA', postal_code: '8001', website: 'http://www.vovotelo.co.za'
Restaurant.create! = resturant_name: 'Yours Truly', street_address: '73 Kloof St.', city: 'Cape Town', state: 'SA', postal_code: '8001', website: 'http://yourstrulycafe.co.za'
Restaurant.create! = resturant_name: 'Knead', street_address: '50 Kloof St.', city: 'Cape Town', state: 'SA', postal_code: '8001', website: 'http://kneadbakery.co.za'

puts "Generating flash sales..."

Post.delete_all
Post.create! = start_time: '8pm', end_time: '10pm', deal: 'Buy 5 bagels for R20'
Post.create! = start_time: '6pm', end_time: '7:15pm', deal: 'Buy a loaf of bread and get two pastries free' 

