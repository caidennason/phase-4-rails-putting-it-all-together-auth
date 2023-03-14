# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create!(username: "hi", password: "dogs", image_url: "123", bio: "test")
user2 = User.create!(username: "bye", password: "dog", image_url: "12", bio: "test!!")

recipe1 = Recipe.create!(title: "food", instructions: "bakebakebakebakebakebakebakebakebakebakebakebakebakebakebakebakebakebakebakebake", minutes_to_complete: 10)
recipe2 = Recipe.create!(title: "meal", instructions: "fryfryfryfryfryfryfryfryfryfryfryfryfryfryfryfryfryfryfryfryfryfryfryfryfryfryfryfryfryfry", minutes_to_complete: 20)

recipe1.user = user1
receip2.user = user1
