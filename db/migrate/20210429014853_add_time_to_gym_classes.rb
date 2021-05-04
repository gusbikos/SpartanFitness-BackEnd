class AddTimeToGymClasses < ActiveRecord::Migration[6.1]
  def change
    add_column :gym_classes, :time, :string
  end
end
