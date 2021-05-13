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
GymClass.create(time: "3:00 P.M", date: "2021-04-28", style: "Boxing", booked: false)
GymClass.create(time: "5:00 P.M", date: "2021-05-03", style: "Kick-Boxing", booked: false)
# Scheduled Classes
ScheduledClass.create(user_id: 1, gym_class_id: 1)
ScheduledClass.create(user_id: 2, gym_class_id: 2)

# Class Reviews
ClassReview.create(description: "Great Class!", rating: 4, user_id: 1)
ClassReview.create(description: "Amazing Class!", rating: 4, user_id: 1)

# Items Gloves
Item.create(name: "Top King Boxing Gloves", price: 50, description: "Black Red White 12 oz", quantity: 7, image: "https://images-na.ssl-images-amazon.com/images/I/413UvpdmOvL.jpg")
Item.create(name: "Top King Boxing Gloves", price: 65, description: "Green 14 oz", quantity: 4, image: "https://cdn.shopify.com/s/files/1/1160/2380/products/TKBGSA-777_800x.jpg?v=1536613696")
Item.create(name: "Yokkao Boxing Gloves", price: 40, description: " Custom 14 oz", quantity: 8, image: "https://thaiboxingfightgear.com/1468-large_default/yokkao-muay-thai-boxing-gloves-skullz.jpg")
Item.create(name: "Yokkao Boxing Gloves", price: 45, description: "Black 16 oz", quantity: 11, image: "https://i.ebayimg.com/images/g/24QAAOSwDXFcp2zv/s-l300.jpg")

#Items Shin guards
Item.create(name: "Shin Guards", price: 40, description: "RDX Shin guards black", quantity: 5, image: "https://images-na.ssl-images-amazon.com/images/I/710tgkWlBJL._AC_SL1500_.jpg")
Item.create(name: "Shin Guards", price: 35, description: "Venum Shin guards blue", quantity: 2, image: "http://cdn.shopify.com/s/files/1/0264/2218/1937/products/SHINGUARD_ELITE_NAVYBLUE_WHITE_HD_01_grande.jpg?v=1601555519")
Item.create(name: "Shin Guards", price: 55, description: "Yokkao Shin guards green", quantity: 9, image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTf8TvHThskNngN-u2nD4hEv5t6TQ75V9ZnJ1PSFkp4MN7MCkhT4YGRdzGyzrtjmsQ0BO1Ln4zv&usqp=CAc")
Item.create(name: "Shin Guards", price: 40, description: "Yokkao Shin guards blue", quantity: 6, image: "https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcSnLOCBpZl2zTIaz3VMOzuzqoYuwPXgZuPPiapOlmqBTRF5wa65GSR77Pl-u27NTldYFj1uQFQa8-rKVyTAeHyGasSnTDMYQEWntZGU0Hpg6w6i-5yrqi7j&usqp=CAE")
    
#Items hand wraps
Item.create(name: "Hand Wraps", price: 10, description: "Everlast Hand wraps black", quantity: 20, image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdrKBJljhqklfgOt2rnalJ2VpiGkKfsDrJ7N4w8nDpQJbysF16G6yJgp7VVqjG0pUozdQeOR6tjA&usqp=CAc")
Item.create(name: "Hand Wraps", price: 12, description: "Everlast Hand wraps red", quantity: 24, image: "https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcTBpTbIS1FxrssHAa2VAYziskKwXgTuXD3KJMW_xoChOZe09A9WoZPasFw1oeQWCJ8JqdMV6cDOcAGlzfUaWr09Fo1wuT87H8KibUqy3pSWjoNsaWd3uv_JbXE&usqp=CAE")
Item.create(name: "Hand Wraps", price: 14, description: "Everlast Hand wraps blue", quantity: 18, image: "https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcQusMX1H6M3Pj8hBN2lt709GjTjWyg45EC_jYtT7NcCihzCBnPW-olNQQaZ-fp8KcFuc-X1e_mkkiJBwAo_8AkFyDsorbe3McEA-m0gaIo_CV4S9EHwh6XB6A&usqp=CAE")
Item.create(name: "Hand Wraps", price: 18, description: "Everlast Hand wraps grey/green", quantity: 13, image: "https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcQ2c5H1z00L4LkatAG_4r6IBjiz297ZQBiHznhH8o-lv-YMBT2W7iiHrP712wCccCskngUm_tyuid13BVUMdhpcUjBgW8_Syv58conWrNg&usqp=CAE")

#Items mouth guard
Item.create(name: "Mouth Guard", price: 12, description: "EverLast Mouth guard red/black", quantity: 10, image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQP1tDqCwPPZP_0WHZ60HUk6xEyLtX9v4zVwLkiVSP2uLuPtt9mDnr1QkiHJCw-hm9CuonnPG53&usqp=CAc")
Item.create(name: "Mouth Guard", price: 15, description: "Shock Doctor Mouth guard", quantity: 14, image: "https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcQA8QHAD0LAjvo4Sjj541HF3OJB5npFrfRAMC-BiCcbCKatRBh5m4UPuvJKEgSgMJwj-llT_kGKBwCb7n4tFVVjTEvFL9ybtLc94ZZt6gdNbwfYZieVt39DFg&usqp=CAE")


#Cart Items
# CartItem.create(user_id: 1, item_id: 1)
# CartItem.create(user_id: 1, item_id: 2)

puts "🥷🏻 🥷🏻 🥷🏻 🥷🏻 🥷🏻 🥷🏻 🥷🏻 🥷🏻 🥷🏻 🥷🏻"