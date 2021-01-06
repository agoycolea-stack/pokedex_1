class InvoiceClient < ApplicationRecord
  belongs_to :Id_Product
  belongs_to :client
  belongs_to :user
  has_many :add_to_invoice_clients
  has_many :products, through: :add_to_invoice_clients
  accepts_nested_attributes_for :add_to_invoice_clients, allow_destroy: true
   

  paginates_per 20
end
