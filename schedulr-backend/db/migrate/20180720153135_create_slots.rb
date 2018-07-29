class CreateSlots < ActiveRecord::Migration[5.2]
  def change
    create_table :slots do |t|
      t.integer :provider_id
      t.integer :user_id
      t.string :appointment_time
      t.integer :slot_duration_minutes
      t.integer :date
      t.string :start_time
      t.string :end_time

      t.timestamps
    end
  end
end
