class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.integer :product_id
      t.string :company
      t.string :product
      t.string :type_name
      t.integer :inches
      t.string :screen_resolution
      t.string :CPU
      t.string :RAM
      t.string :memory
      t.string :GPU
      t.integer :price

      t.timestamps
    end
  end
end
