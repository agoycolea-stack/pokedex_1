class CreateAddToInvoiceSuppliers < ActiveRecord::Migration[5.2]
  def change
    create_table :add_to_invoice_suppliers do |t|
      t.references :Supplier_Document_ID, foreign_key: true
      t.references :product_id, foreign_key: true
      t.float :Quantity
      t.float :Previous_Quantity
      t.float :Post_Quantity

      t.timestamps
    end
  end
end
