require 'test_helper'

class InvoiceClientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @invoice_client = invoice_clients(:one)
  end

  test "should get index" do
    get invoice_clients_url
    assert_response :success
  end

  test "should get new" do
    get new_invoice_client_url
    assert_response :success
  end

  test "should create invoice_client" do
    assert_difference('InvoiceClient.count') do
      post invoice_clients_url, params: { invoice_client: { Brute_Value: @invoice_client.Brute_Value, Client_Id: @invoice_client.Client_Id, IVA: @invoice_client.IVA, Id_Invoice_Client: @invoice_client.Id_Invoice_Client, Id_Product_id: @invoice_client.Id_Product_id, Net_Value: @invoice_client.Net_Value } }
    end

    assert_redirected_to invoice_client_url(InvoiceClient.last)
  end

  test "should show invoice_client" do
    get invoice_client_url(@invoice_client)
    assert_response :success
  end

  test "should get edit" do
    get edit_invoice_client_url(@invoice_client)
    assert_response :success
  end

  test "should update invoice_client" do
    patch invoice_client_url(@invoice_client), params: { invoice_client: { Brute_Value: @invoice_client.Brute_Value, Client_Id: @invoice_client.Client_Id, IVA: @invoice_client.IVA, Id_Invoice_Client: @invoice_client.Id_Invoice_Client, Id_Product_id: @invoice_client.Id_Product_id, Net_Value: @invoice_client.Net_Value } }
    assert_redirected_to invoice_client_url(@invoice_client)
  end

  test "should destroy invoice_client" do
    assert_difference('InvoiceClient.count', -1) do
      delete invoice_client_url(@invoice_client)
    end

    assert_redirected_to invoice_clients_url
  end
end
