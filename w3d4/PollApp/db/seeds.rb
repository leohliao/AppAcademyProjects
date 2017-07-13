# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create!(name: "MingLeSi")
user2 = User.create!(name: "Hsiang")

poll1 = Poll.create!(title: "Xi Huan Chi Shen Me", )
poll2 = Poll.create!("Xi Huan Qu Na Li")

question
