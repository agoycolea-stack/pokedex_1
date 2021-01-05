class AddToInvoiceClientsController < ApplicationController
  before_action :set_add_to_invoice_client, only: [:show, :edit, :update, :destroy]

  # GET /add_to_invoice_clients
  # GET /add_to_invoice_clients.json
  def index
    @add_to_invoice_clients = AddToInvoiceClient.all
  end

  # GET /add_to_invoice_clients/1
  # GET /add_to_invoice_clients/1.json
  def show
  end

  # GET /add_to_invoice_clients/new
  def new
    @add_to_invoice_client = AddToInvoiceClient.new
  end

  # GET /add_to_invoice_clients/1/edit
  def edit
  end

  # POST /add_to_invoice_clients
  # POST /add_to_invoice_clients.json
  def create
    @add_to_invoice_client = AddToInvoiceClient.new(add_to_invoice_client_params)

    respond_to do |format|
      if @add_to_invoice_client.save
        format.html { redirect_to @add_to_invoice_client, notice: 'Add to invoice client was successfully created.' }
        format.json { render :show, status: :created, location: @add_to_invoice_client }
      else
        format.html { render :new }
        format.json { render json: @add_to_invoice_client.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /add_to_invoice_clients/1
  # PATCH/PUT /add_to_invoice_clients/1.json
  def update
    respond_to do |format|
      if @add_to_invoice_client.update(add_to_invoice_client_params)
        format.html { redirect_to @add_to_invoice_client, notice: 'Add to invoice client was successfully updated.' }
        format.json { render :show, status: :ok, location: @add_to_invoice_client }
      else
        format.html { render :edit }
        format.json { render json: @add_to_invoice_client.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /add_to_invoice_clients/1
  # DELETE /add_to_invoice_clients/1.json
  def destroy
    @add_to_invoice_client.destroy
    respond_to do |format|
      format.html { redirect_to add_to_invoice_clients_url, notice: 'Add to invoice client was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_add_to_invoice_client
      @add_to_invoice_client = AddToInvoiceClient.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def add_to_invoice_client_params
      params.require(:add_to_invoice_client).permit(:Document_ID_id, :Product_Id_id, :Quantity, :Previous_Quantity, :Post_Quantity)
    end
end
