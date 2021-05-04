class RemoveTimeFromGymClass < ActiveRecord::Migration[6.1]
  def change
    remove_column :gym_classes, :time, :integer
  end
end
