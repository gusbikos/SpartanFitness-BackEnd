class CreateClassReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :class_reviews do |t|
      t.string :description
      t.integer :rating
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :gym_class, null: false, foreign_key: true

      t.timestamps
    end
  end
end
