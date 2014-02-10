class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.integer :scheduled_id
      t.string :scheduled_type

      t.timestamps
    end
  end
end
