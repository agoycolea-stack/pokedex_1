require "application_system_test_case"

class InvoiceSuppliersTest < ApplicationSystemTestCase
  setup do
    @invoice_supplier = invoice_suppliers(:one)
  end

  test "visiting the index" do
    visit invoice_suppliers_url
    assert_selector "h1", text: "Invoice Suppliers"
  end

  test "creating a Invoice supplier" do
    visit invoice_suppliers_url
    click_on "New Invoice Supplier"

    fill_in "Brute value", with: @invoice_supplier.Brute_Value
    fill_in "Iva", with: @invoice_supplier.IVA
    fill_in "Id invoice supplier", with: @invoice_supplier.Id_Invoice_Supplier
    fill_in "Id product", with: @invoice_supplier.Id_Product_id
    fill_in "Net value", with: @invoice_supplier.Net_Value
    fill_in "Supplier id", with: @invoice_supplier.Supplier_Id
    click_on "Create Invoice supplier"

    assert_text "Invoice supplier was successfully created"
    click_on "Back"
  end

  test "updating a Invoice supplier" do
    visit invoice_suppliers_url
    click_on "Edit", match: :first

    fill_in "Brute value", with: @invoice_supplier.Brute_Value
    fill_in "Iva", with: @invoice_supplier.IVA
    fill_in "Id invoice supplier", with: @invoice_supplier.Id_Invoice_Supplier
    fill_in "Id product", with: @invoice_supplier.Id_Product_id
    fill_in "Net value", with: @invoice_supplier.Net_Value
    fill_in "Supplier id", with: @invoice_supplier.Supplier_Id
    click_on "Update Invoice supplier"

    assert_text "Invoice supplier was successfully updated"
    click_on "Back"
  end

  test "destroying a Invoice supplier" do
    visit invoice_suppliers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Invoice supplier was successfully destroyed"
  end
end
