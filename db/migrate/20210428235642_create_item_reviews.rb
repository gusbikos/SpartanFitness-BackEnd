class CreateItemReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :item_reviews do |t|
      t.integer :rating
      t.string :review
      t.belongs_to :item, null: false, foreign_key: true

      t.timestamps
    end
  end
end
