class CreateSalePrices < ActiveRecord::Migration[5.2]
  def change
    create_table :sale_prices do |t|
      t.references :Product_id, foreign_key: true
      t.float :Price

      t.timestamps
    end
  end
end
