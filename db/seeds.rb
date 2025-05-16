# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning db"

Car.destroy_all
Owner.destroy_all
Review.destroy_all
Favourite.destroy_all

puts "Creating Owners..."

auggie = Owner.create!(nickname: "Auggie")
quiqui = Owner.create!(nickname: "Quiqui")
justi = Owner.create!(nickname: "Justi")

puts "Created #{Owner.count} owner"

puts "Creating Cars..."

Car.create!(brand: "Mini Cooper", model: "Sport", year: 2025, owner: auggie, image_url:"https://classicandsportscar.ltd.uk/images/2017/02/lg/mini-cooper-500_30642.jpg")
Car.create!(brand: "Mercedes", model: "Class C", year: 2025, owner: quiqui, image_url:"https://upload.wikimedia.org/wikipedia/commons/thumb/a/a9/Festival_automobile_international_2015_-_Mercedes_AMG_GT_-_003.jpg/2880px-Festival_automobile_international_2015_-_Mercedes_AMG_GT_-_003.jpg")
Car.create!(brand: "Jaguar", model: "Sport", year: 2024, owner: justi, image_url:"https://static0.carbuzzimages.com/wordpress/wp-content/uploads/gallery-images/original/438000/0/438083.jpg")

puts "Created #{Car.count} cars"
