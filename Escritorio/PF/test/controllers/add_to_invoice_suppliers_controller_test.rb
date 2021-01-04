require 'test_helper'

class AddToInvoiceSuppliersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @add_to_invoice_supplier = add_to_invoice_suppliers(:one)
  end

  test "should get index" do
    get add_to_invoice_suppliers_url
    assert_response :success
  end

  test "should get new" do
    get new_add_to_invoice_supplier_url
    assert_response :success
  end

  test "should create add_to_invoice_supplier" do
    assert_difference('AddToInvoiceSupplier.count') do
      post add_to_invoice_suppliers_url, params: { add_to_invoice_supplier: { Document_ID_id: @add_to_invoice_supplier.Document_ID_id, Post_Quantity: @add_to_invoice_supplier.Post_Quantity, Previous_Quantity: @add_to_invoice_supplier.Previous_Quantity, Product_Id_id: @add_to_invoice_supplier.Product_Id_id, Quantity: @add_to_invoice_supplier.Quantity } }
    end

    assert_redirected_to add_to_invoice_supplier_url(AddToInvoiceSupplier.last)
  end

  test "should show add_to_invoice_supplier" do
    get add_to_invoice_supplier_url(@add_to_invoice_supplier)
    assert_response :success
  end

  test "should get edit" do
    get edit_add_to_invoice_supplier_url(@add_to_invoice_supplier)
    assert_response :success
  end

  test "should update add_to_invoice_supplier" do
    patch add_to_invoice_supplier_url(@add_to_invoice_supplier), params: { add_to_invoice_supplier: { Document_ID_id: @add_to_invoice_supplier.Document_ID_id, Post_Quantity: @add_to_invoice_supplier.Post_Quantity, Previous_Quantity: @add_to_invoice_supplier.Previous_Quantity, Product_Id_id: @add_to_invoice_supplier.Product_Id_id, Quantity: @add_to_invoice_supplier.Quantity } }
    assert_redirected_to add_to_invoice_supplier_url(@add_to_invoice_supplier)
  end

  test "should destroy add_to_invoice_supplier" do
    assert_difference('AddToInvoiceSupplier.count', -1) do
      delete add_to_invoice_supplier_url(@add_to_invoice_supplier)
    end

    assert_redirected_to add_to_invoice_suppliers_url
  end
end
