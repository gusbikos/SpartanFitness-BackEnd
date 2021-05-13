class RemoveClassFromGymClasses < ActiveRecord::Migration[6.1]
  def change
    remove_column :gym_classes, :class, :string
  end
end
