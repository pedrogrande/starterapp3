class CreateCartProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :cart_products do |t|
      t.belongs_to :cart, foreign_key: true
      t.belongs_to :product, foreign_key: true
      t.integer :num, default: 1

      t.timestamps
    end
  end
end
