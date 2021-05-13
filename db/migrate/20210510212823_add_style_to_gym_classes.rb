class AddStyleToGymClasses < ActiveRecord::Migration[6.1]
  def change
    add_column :gym_classes, :style, :string
  end
end
