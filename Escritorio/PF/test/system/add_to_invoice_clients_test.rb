require "application_system_test_case"

class AddToInvoiceClientsTest < ApplicationSystemTestCase
  setup do
    @add_to_invoice_client = add_to_invoice_clients(:one)
  end

  test "visiting the index" do
    visit add_to_invoice_clients_url
    assert_selector "h1", text: "Add To Invoice Clients"
  end

  test "creating a Add to invoice client" do
    visit add_to_invoice_clients_url
    click_on "New Add To Invoice Client"

    fill_in "Document id", with: @add_to_invoice_client.Document_ID_id
    fill_in "Post quantity", with: @add_to_invoice_client.Post_Quantity
    fill_in "Previous quantity", with: @add_to_invoice_client.Previous_Quantity
    fill_in "Product id", with: @add_to_invoice_client.Product_Id_id
    fill_in "Quantity", with: @add_to_invoice_client.Quantity
    click_on "Create Add to invoice client"

    assert_text "Add to invoice client was successfully created"
    click_on "Back"
  end

  test "updating a Add to invoice client" do
    visit add_to_invoice_clients_url
    click_on "Edit", match: :first

    fill_in "Document id", with: @add_to_invoice_client.Document_ID_id
    fill_in "Post quantity", with: @add_to_invoice_client.Post_Quantity
    fill_in "Previous quantity", with: @add_to_invoice_client.Previous_Quantity
    fill_in "Product id", with: @add_to_invoice_client.Product_Id_id
    fill_in "Quantity", with: @add_to_invoice_client.Quantity
    click_on "Update Add to invoice client"

    assert_text "Add to invoice client was successfully updated"
    click_on "Back"
  end

  test "destroying a Add to invoice client" do
    visit add_to_invoice_clients_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Add to invoice client was successfully destroyed"
  end
end
