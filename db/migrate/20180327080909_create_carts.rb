class CreateCarts < ActiveRecord::Migration[5.1]
  def change
    create_table :carts do |t|
      t.string :uuid
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
    add_index :carts, :uuid, unique: true
  end
end
