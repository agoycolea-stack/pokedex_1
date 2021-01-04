class CreateSupplierPrices < ActiveRecord::Migration[5.2]
  def change
    create_table :supplier_prices do |t|
      t.references :Id_Supplier, foreign_key: true
      t.references :product_id, foreign_key: true

      t.timestamps
    end
  end
end
