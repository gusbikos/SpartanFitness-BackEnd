class CreateGymClasses < ActiveRecord::Migration[6.1]
  def change
    create_table :gym_classes do |t|
      t.integer :time
      t.string :date
      t.boolean :booked

      t.timestamps
    end
  end
end
