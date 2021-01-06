class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :product_id
      t.string :price
      t.string :category
      t.string :position

      t.timestamps
    end
  end
end
