class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :class_reviews

  # has_many :scheduled_classes
  has_many :gym_classes, through: :scheduled_classes
  has_many :class_reviews 
  # has_many :gym_classes, through: :class_reviews
  has_many :cart_items
  # has_many :items, through: :cart_items

end
