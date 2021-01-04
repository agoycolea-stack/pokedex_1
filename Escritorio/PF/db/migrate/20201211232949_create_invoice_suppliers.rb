class CreateInvoiceSuppliers < ActiveRecord::Migration[5.2]
  def change
    create_table :invoice_suppliers do |t|
      t.string :Id_Invoice_Supplier
      t.string :Supplier_Id
      t.references :Id_Product, foreign_key: true
      t.integer :Net_Value
      t.integer :Brute_Value
      t.float :IVA

      t.timestamps
    end
  end
end
