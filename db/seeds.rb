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

puts "Creating Owners..."

auggie = Owner.create!(nickname: "Auggie")
quiqui = Owner.create!(nickname: "Quiqui")
justi = Owner.create!(nickname: "Justi")

puts "Created #{Owner.count} owner"

puts "Creating Cars..."

Car.create!(brand: "Mini Cooper", model: "Sport", year: 2025, owner: auggie)
Car.create!(brand: "Mercedes", model: "Class C", year: 2025, owner: quiqui)
Car.create!(brand: "Yaguar", model: "Sport", year: 2024, owner: justi)

puts "Created #{Car.count} cars"
