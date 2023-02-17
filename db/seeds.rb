# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'open-uri'

puts "cleaning database"
Article.destroy_all

puts "creating articles"

file1 = URI.open("https://res.cloudinary.com/dflmik2ut/image/upload/v1676647044/GROUP_1_d68zyy.jpg")
article1 = Article.new(title: "The Gang", body: "Back in the Shadow Industry")
article1.photos.attach(io: file1, filename: "nes.jpg", content_type: "image/jpg")
article1.save

file2 = URI.open("https://res.cloudinary.com/dflmik2ut/image/upload/v1676647041/USMAN_3_h06dnt.jpg")
article2 = Article.new(title: "Cha Boy", body: "Cha Boy on the Stairwell")
article2.photos.attach(io: file2, filename: "nes.jpg", content_type: "image/jpg")
article2.save

puts "DONE"
