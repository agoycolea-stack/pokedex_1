class CreateStocks < ActiveRecord::Migration[5.2]
  def change
    create_table :stocks do |t|
      t.references :Product_id, foreign_key: true
      t.float :Quantity

      t.timestamps
    end
  end
end
