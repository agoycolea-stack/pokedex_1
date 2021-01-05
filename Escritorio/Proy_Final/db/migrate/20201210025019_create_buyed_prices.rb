class CreateBuyedPrices < ActiveRecord::Migration[5.2]
  def change
    create_table :buyed_prices do |t|
      t.references :product_id, foreign_key: true

      t.timestamps
    end
  end
end
