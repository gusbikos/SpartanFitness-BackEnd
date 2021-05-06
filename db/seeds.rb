ScheduledClass.destroy_all
ClassReview.destroy_all
CartItem.destroy_all
ItemReview.destroy_all 
User.destroy_all 
GymClass.destroy_all
Item.destroy_all 
User.reset_pk_sequence
Item.reset_pk_sequence
CartItem.reset_pk_sequence
ScheduledClass.reset_pk_sequence
GymClass.reset_pk_sequence
ItemReview.reset_pk_sequence
ClassReview.reset_pk_sequence


# Users
User.create(name: "Gus", email: "spartan@gmail.com", password: "123")

# Gym Classes
GymClass.create(time: "3:00 P.M", date: "April 28, 2021", booked: false)

# Scheduled Classes
ScheduledClass.create(user_id: 1, gym_class_id: 1)

# Class Reviews
ClassReview.create(description: "Great Class!", rating: 4, user_id: 1, gym_class_id: 1)

# Items 
Item.create(name: "Gloves", price: 50, description: "12 oz", quantity: 4, image: "https://images-na.ssl-images-amazon.com/images/I/413UvpdmOvL.jpg")
Item.create(name: "Hand Wraps", price: 10, description: "hand wraps", quantity: 2, image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdrKBJljhqklfgOt2rnalJ2VpiGkKfsDrJ7N4w8nDpQJbysF16G6yJgp7VVqjG0pUozdQeOR6tjA&usqp=CAc")
Item.create(name: "Shin Guards", price: 40, description: "shin guards", quantity: 5, image: "https://images-na.ssl-images-amazon.com/images/I/710tgkWlBJL._AC_SL1500_.jpg")
Item.create(name: "Mouth Guard", price: 15, description: "mouth guard", quantity: 10, image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQP1tDqCwPPZP_0WHZ60HUk6xEyLtX9v4zVwLkiVSP2uLuPtt9mDnr1QkiHJCw-hm9CuonnPG53&usqp=CAc")

#Cart Items
# CartItem.create(user_id: 1, item_id: 1)
# CartItem.create(user_id: 1, item_id: 2)


# Item Reviews
ItemReview.create(rating: 5, review: "Great pair of gloves!", item_id: 1)

puts "🥷🏻 🥷🏻 🥷🏻 🥷🏻 🥷🏻 🥷🏻 🥷🏻 🥷🏻 🥷🏻 🥷🏻"