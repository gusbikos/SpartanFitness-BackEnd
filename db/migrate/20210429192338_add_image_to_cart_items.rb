class AddImageToCartItems < ActiveRecord::Migration[6.1]
  def change
    add_column :cart_items, :image, :string
  end
end
