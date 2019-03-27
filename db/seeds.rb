# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

subjects = [
  {name: "Ruby", position: 1, visible: true},
  {name: "Ruby on Rails", position: 2, visible: false},
  {name: "CoffeeScript", position: 3, visible: true},
  {name: "Python", position: 4, visible: false},
  {name: "JavaScript", position: 5, visible: true},
]
