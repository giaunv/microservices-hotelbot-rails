class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter
      t.integer :rating
      t.text :body
      t.references :hotel, index: true

      t.timestamps null: false
    end
    add_foreign_key :comments, :hotels
  end
end
