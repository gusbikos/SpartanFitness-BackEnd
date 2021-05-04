class ItemReviewSerializer < ActiveModel::Serializer
  attributes :id, :rating, :review, :item_id

  # belongs_to :item
end
