require "application_system_test_case"

class AddToInvoiceSuppliersTest < ApplicationSystemTestCase
  setup do
    @add_to_invoice_supplier = add_to_invoice_suppliers(:one)
  end

  test "visiting the index" do
    visit add_to_invoice_suppliers_url
    assert_selector "h1", text: "Add To Invoice Suppliers"
  end

  test "creating a Add to invoice supplier" do
    visit add_to_invoice_suppliers_url
    click_on "New Add To Invoice Supplier"

    fill_in "Document id", with: @add_to_invoice_supplier.Document_ID_id
    fill_in "Post quantity", with: @add_to_invoice_supplier.Post_Quantity
    fill_in "Previous quantity", with: @add_to_invoice_supplier.Previous_Quantity
    fill_in "Product id", with: @add_to_invoice_supplier.Product_Id_id
    fill_in "Quantity", with: @add_to_invoice_supplier.Quantity
    click_on "Create Add to invoice supplier"

    assert_text "Add to invoice supplier was successfully created"
    click_on "Back"
  end

  test "updating a Add to invoice supplier" do
    visit add_to_invoice_suppliers_url
    click_on "Edit", match: :first

    fill_in "Document id", with: @add_to_invoice_supplier.Document_ID_id
    fill_in "Post quantity", with: @add_to_invoice_supplier.Post_Quantity
    fill_in "Previous quantity", with: @add_to_invoice_supplier.Previous_Quantity
    fill_in "Product id", with: @add_to_invoice_supplier.Product_Id_id
    fill_in "Quantity", with: @add_to_invoice_supplier.Quantity
    click_on "Update Add to invoice supplier"

    assert_text "Add to invoice supplier was successfully updated"
    click_on "Back"
  end

  test "destroying a Add to invoice supplier" do
    visit add_to_invoice_suppliers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Add to invoice supplier was successfully destroyed"
  end
end
