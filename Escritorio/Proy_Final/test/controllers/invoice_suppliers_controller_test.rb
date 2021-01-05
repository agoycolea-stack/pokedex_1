require 'test_helper'

class InvoiceSuppliersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @invoice_supplier = invoice_suppliers(:one)
  end

  test "should get index" do
    get invoice_suppliers_url
    assert_response :success
  end

  test "should get new" do
    get new_invoice_supplier_url
    assert_response :success
  end

  test "should create invoice_supplier" do
    assert_difference('InvoiceSupplier.count') do
      post invoice_suppliers_url, params: { invoice_supplier: { Brute_Value: @invoice_supplier.Brute_Value, IVA: @invoice_supplier.IVA, Id_Invoice_Supplier: @invoice_supplier.Id_Invoice_Supplier, Id_Product_id: @invoice_supplier.Id_Product_id, Net_Value: @invoice_supplier.Net_Value, Supplier_Id: @invoice_supplier.Supplier_Id } }
    end

    assert_redirected_to invoice_supplier_url(InvoiceSupplier.last)
  end

  test "should show invoice_supplier" do
    get invoice_supplier_url(@invoice_supplier)
    assert_response :success
  end

  test "should get edit" do
    get edit_invoice_supplier_url(@invoice_supplier)
    assert_response :success
  end

  test "should update invoice_supplier" do
    patch invoice_supplier_url(@invoice_supplier), params: { invoice_supplier: { Brute_Value: @invoice_supplier.Brute_Value, IVA: @invoice_supplier.IVA, Id_Invoice_Supplier: @invoice_supplier.Id_Invoice_Supplier, Id_Product_id: @invoice_supplier.Id_Product_id, Net_Value: @invoice_supplier.Net_Value, Supplier_Id: @invoice_supplier.Supplier_Id } }
    assert_redirected_to invoice_supplier_url(@invoice_supplier)
  end

  test "should destroy invoice_supplier" do
    assert_difference('InvoiceSupplier.count', -1) do
      delete invoice_supplier_url(@invoice_supplier)
    end

    assert_redirected_to invoice_suppliers_url
  end
end
