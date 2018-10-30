# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

9.times do|i|
  Task.create(
    name: Faker::VForVendetta.quote,
    photo: "http://lorempixel.com/200/200/technics/#{i + 1}"
    )
end