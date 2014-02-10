class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.datetime :start
      t.datetime :end
      t.integer :schedule_id
      t.text :note
      t.integer :procedure_id

      t.timestamps
    end
  end
end
