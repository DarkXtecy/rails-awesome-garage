# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


# Clear existing data
Favourite.destroy_all
Review.destroy_all
Car.destroy_all
Owner.destroy_all

# Seed Owners
owner1 = Owner.create!(nickname: "Dipesh")
owner2 = Owner.create!(nickname: "Luke")
owner3 = Owner.create!(nickname: "Sophia")
owner4 = Owner.create!(nickname: "Ethan")
owner5 = Owner.create!(nickname: "Emma")

# Seed Cars
car1 = Car.create!(brand: "Mercedes", model: "A-Class Hatchback", year: 2024, fuel: "Unleaded petrol", owner: owner2)
car2 = Car.create!(brand: "Peugeot", model: "308", year: 2017, fuel: "Unleaded petrol", owner: owner1)
car3 = Car.create!(brand: "BMW", model: "X5", year: 2022, fuel: "Diesel", owner: owner3)
car4 = Car.create!(brand: "Audi", model: "A4", year: 2019, fuel: "Hybrid", owner: owner4)
car5 = Car.create!(brand: "Tesla", model: "Model 3", year: 2021, fuel: "Electric", owner: owner5)

# Seed Reviews
Review.create!(comment: "Love this car!", rating: 5, car: car1)
Review.create!(comment: "It was OK...", rating: 3, car: car2)
Review.create!(comment: "Amazing ride, highly recommend!", rating: 5, car: car3)
Review.create!(comment: "Good value for money.", rating: 4, car: car4)
Review.create!(comment: "A game changer in EVs.", rating: 5, car: car5)

# Seed Favourites
Favourite.create!(car: car1)
Favourite.create!(car: car2)
Favourite.create!(car: car3)
Favourite.create!(car: car4)
Favourite.create!(car: car5)
