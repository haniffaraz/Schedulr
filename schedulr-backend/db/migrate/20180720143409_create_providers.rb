class CreateProviders < ActiveRecord::Migration[5.2]
  def change
    create_table :providers do |t|
      t.string :name
      t.text :address
      t.string :img_url
      t.string :specialty

      t.timestamps
    end
  end
end
