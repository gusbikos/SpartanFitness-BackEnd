# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ScheduledClass.destroy_all
ClassReview.destroy_all
CartItem.destroy_all
ItemReview.destroy_all 
User.destroy_all 
GymClass.destroy_all
Item.destroy_all 
User.reset_pk_sequence

# Users
User.create(name: "Gus", email: "spartan@gmail.com", password: "123")

# Gym Classes
GymClass.create(time: "3:00 P.M", date: "April 28, 2021", booked: false)

# Scheduled Classes
ScheduledClass.create(user_id: 1, gym_class_id: 1)

# Class Reviews
ClassReview.create(description: "Great Class!", rating: 4, user_id: 1, gym_class_id: 1)

# Items 
Item.create(name: "Gloves", price: 50, description: "16 oz", quantity: 4, image: "")

#Cart Items
CartItem.create(user_id: 1, item_id: 1)

# Item Reviews
ItemReview.create(rating: 5, review: "Great pair of gloves!", item_id: 1)

puts "🥷🏻 🥷🏻 🥷🏻 🥷🏻 🥷🏻 🥷🏻 🥷🏻 🥷🏻 🥷🏻 🥷🏻"