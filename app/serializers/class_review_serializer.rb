class ClassReviewSerializer < ActiveModel::Serializer
  attributes :id, :description, :rating, :user_id, :gym_class_id

  # belongs_to :user
  # belongs_to :gym_class
end
