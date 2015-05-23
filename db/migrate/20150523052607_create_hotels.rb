class CreateHotels < ActiveRecord::Migration
  def change
    create_table :hotels do |t|
      t.string :name
      t.string :image
      t.string :address
      t.string :phone
      t.integer :rooms
      t.decimal :price

      t.timestamps null: false
    end
  end
end
