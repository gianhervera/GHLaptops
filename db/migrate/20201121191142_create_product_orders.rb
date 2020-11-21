class CreateProductOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :product_orders do |t|
      t.integer :order_id
      t.references :Product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
