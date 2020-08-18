# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(first_name: 'test1', last_name: '1', email: 'test@test.com', password: '123456', chef: true, postcode: 'NE9123')
User.create!(first_name: 'test2', last_name: '2', email: 'test2@test.com', password: '123456', chef: false, postcode: 'EC1V0HF')
User.create!(first_name: 'test3', last_name: '3', email: 'test3@test.com', password: '123456', chef: true, postcode: 'W149AS')
User.create!(first_name: 'test4', last_name: '4', email: 'test4@test.com', password: '123456', chef: false, postcode: 'BE1126')
User.create!(first_name: 'test5', last_name: '5', email: 'test5@test.com', password: '123456', chef: true, postcode: 'NE9125')
User.create!(first_name: 'test6', last_name: '6', email: 'test6@test.com', password: '123456', chef: false, postcode: 'EC1V0GF')
User.create!(first_name: 'tes7', last_name: '7', email: 'test7@test.com', password: '123456', chef: true, postcode: 'W149RS')
User.create!(first_name: 'test8', last_name: '8', email: 'test8@test.com', password: '123456', chef: false, postcode: 'BE1126D')
