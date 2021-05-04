class ScheduledClassSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :gym_class_id

  # belongs_to :user
  # belongs_to :gym_class
end
