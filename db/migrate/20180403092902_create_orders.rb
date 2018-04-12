class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :name
      t.string :email
      t.string :address
      t.string :suburb
      t.string :state
      t.string :postcode
      t.string :country
      t.string :phone
      t.boolean :paid
      t.belongs_to :cart, foreign_key: true

      t.timestamps
    end
  end
end
