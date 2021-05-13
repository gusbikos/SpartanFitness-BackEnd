class RemoveGymClassIdFromClassReviews < ActiveRecord::Migration[6.1]
  def change
    remove_column :class_reviews, :gym_class_id, :integer
  end
end
