class AddToInvoiceSupplier < ApplicationRecord
  belongs_to :Document_ID
  belongs_to :Product_Id
end
