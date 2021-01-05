require 'test_helper'

class AddToInvoiceClientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @add_to_invoice_client = add_to_invoice_clients(:one)
  end

  test "should get index" do
    get add_to_invoice_clients_url
    assert_response :success
  end

  test "should get new" do
    get new_add_to_invoice_client_url
    assert_response :success
  end

  test "should create add_to_invoice_client" do
    assert_difference('AddToInvoiceClient.count') do
      post add_to_invoice_clients_url, params: { add_to_invoice_client: { Document_ID_id: @add_to_invoice_client.Document_ID_id, Post_Quantity: @add_to_invoice_client.Post_Quantity, Previous_Quantity: @add_to_invoice_client.Previous_Quantity, Product_Id_id: @add_to_invoice_client.Product_Id_id, Quantity: @add_to_invoice_client.Quantity } }
    end

    assert_redirected_to add_to_invoice_client_url(AddToInvoiceClient.last)
  end

  test "should show add_to_invoice_client" do
    get add_to_invoice_client_url(@add_to_invoice_client)
    assert_response :success
  end

  test "should get edit" do
    get edit_add_to_invoice_client_url(@add_to_invoice_client)
    assert_response :success
  end

  test "should update add_to_invoice_client" do
    patch add_to_invoice_client_url(@add_to_invoice_client), params: { add_to_invoice_client: { Document_ID_id: @add_to_invoice_client.Document_ID_id, Post_Quantity: @add_to_invoice_client.Post_Quantity, Previous_Quantity: @add_to_invoice_client.Previous_Quantity, Product_Id_id: @add_to_invoice_client.Product_Id_id, Quantity: @add_to_invoice_client.Quantity } }
    assert_redirected_to add_to_invoice_client_url(@add_to_invoice_client)
  end

  test "should destroy add_to_invoice_client" do
    assert_difference('AddToInvoiceClient.count', -1) do
      delete add_to_invoice_client_url(@add_to_invoice_client)
    end

    assert_redirected_to add_to_invoice_clients_url
  end
end
