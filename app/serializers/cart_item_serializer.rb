class CartItemSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :item_id, :item

  # belongs_to :user
  # belongs_to :item
end
