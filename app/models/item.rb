class Item < ApplicationRecord
    has_many :cart_items
    has_many :users, through: :cart_items
    has_many :item_reviews

    validates :quantity, numericality: {:greater_than_or_equal_to => 0}
end
