class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :order_id
      t.integer :customer_id
      t.integer :quantity
      t.string :product
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
