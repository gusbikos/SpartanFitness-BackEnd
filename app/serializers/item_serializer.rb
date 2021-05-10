class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description, :quantity, :image

  # has_many :cart_items
  # has_many :users, through: :cart_items
  has_many :item_reviews
end
