class ClassReviewSerializer < ActiveModel::Serializer
  attributes :id, :description, :rating, :user_id

  # belongs_to :user
  # belongs_to :gym_class
end
