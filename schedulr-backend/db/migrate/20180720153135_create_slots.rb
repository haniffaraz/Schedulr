class CreateSlots < ActiveRecord::Migration[5.2]
  def change
    create_table :slots do |t|
      t.integer :provider_id
      t.integer :user_id
      t.string :title
      t.string :start
      t.string :end

      t.timestamps
    end
  end
end
