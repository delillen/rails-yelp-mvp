# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
resto1 = {name: "Saigon", address: "5 rue du Temple 75013 Paris", phone_number: "0134267489", category: "chinese"}
resto2 = {name: "Pazza Pizzas", address: "18 avenue du Général Leclerc 35000 Rennes", phone_number: "0243448909", category: "italian"}
resto3 = {name: "Itagaki", address: "37 avenue de Rivoli 44000 Nantes", phone_number: "0267859365", category: "japanese"}
resto4 = {name: "Choucroute Party", address: "46 rue fontaine 44390 Nort sur Erdre", phone_number: "0254789138", category: "french"}
resto5 = {name: "A la bonne frite", address: "4 avenue de l'obélisque 69000 Lyon", phone_number: "0176389472", category: "belgian"}


[resto1, resto2, resto3, resto4, resto5].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
