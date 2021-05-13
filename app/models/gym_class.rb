class GymClass < ApplicationRecord
    has_many :class_reviews
    has_many :users, through: :class_reviews
end
