# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Owner.create!(first_name: "Soyeong", last_name: "Oh", age: 27, email: "soyeong@gmail.com")
Owner.create!(first_name: "Chris", last_name: "Pratt", age: 45, email: "pratt@gmail.com")

Pet.create!(name: "Kira", animal_type: "cat", owner_id: 1)
