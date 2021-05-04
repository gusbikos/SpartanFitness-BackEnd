class GymClassSerializer < ActiveModel::Serializer
  attributes :id, :time, :date, :booked

  # has_many :scheduled_classes
  # has_many :users, through: :scheduled_classes
  # has_many :class_reviews
  # has_many :users, through: :class_reviews
end
