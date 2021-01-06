class Home < ApplicationRecord

  accepts_nested_attributes_for :invoice_clients, allow_destroy: true
  
end