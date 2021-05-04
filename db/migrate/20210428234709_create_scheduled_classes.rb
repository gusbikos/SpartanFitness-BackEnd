class CreateScheduledClasses < ActiveRecord::Migration[6.1]
  def change
    create_table :scheduled_classes do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :gym_class, null: false, foreign_key: true

      t.timestamps
    end
  end
end
