require "application_system_test_case"

class InvoiceClientsTest < ApplicationSystemTestCase
  setup do
    @invoice_client = invoice_clients(:one)
  end

  test "visiting the index" do
    visit invoice_clients_url
    assert_selector "h1", text: "Invoice Clients"
  end

  test "creating a Invoice client" do
    visit invoice_clients_url
    click_on "New Invoice Client"

    fill_in "Brute value", with: @invoice_client.Brute_Value
    fill_in "Client id", with: @invoice_client.Client_Id
    fill_in "Iva", with: @invoice_client.IVA
    fill_in "Id invoice client", with: @invoice_client.Id_Invoice_Client
    fill_in "Id product", with: @invoice_client.Id_Product_id
    fill_in "Net value", with: @invoice_client.Net_Value
    click_on "Create Invoice client"

    assert_text "Invoice client was successfully created"
    click_on "Back"
  end

  test "updating a Invoice client" do
    visit invoice_clients_url
    click_on "Edit", match: :first

    fill_in "Brute value", with: @invoice_client.Brute_Value
    fill_in "Client id", with: @invoice_client.Client_Id
    fill_in "Iva", with: @invoice_client.IVA
    fill_in "Id invoice client", with: @invoice_client.Id_Invoice_Client
    fill_in "Id product", with: @invoice_client.Id_Product_id
    fill_in "Net value", with: @invoice_client.Net_Value
    click_on "Update Invoice client"

    assert_text "Invoice client was successfully updated"
    click_on "Back"
  end

  test "destroying a Invoice client" do
    visit invoice_clients_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Invoice client was successfully destroyed"
  end
end
