class InvoiceClientsController < ApplicationController
  before_action :set_invoice_client, only: [:show, :edit, :update, :destroy]

  # GET /invoice_clients
  # GET /invoice_clients.json
  def index
    @invoice_clients = InvoiceClient.all
  end

  # GET /invoice_clients/1
  # GET /invoice_clients/1.json
  def show
  end

  # GET /invoice_clients/new
  def new
    @invoice_client = InvoiceClient.new
  end

  # GET /invoice_clients/1/edit
  def edit
  end

  # POST /invoice_clients
  # POST /invoice_clients.json
  def create
    @invoice_client = InvoiceClient.new(invoice_client_params)

    respond_to do |format|
      if @invoice_client.save
        format.html { redirect_to @invoice_client, notice: 'Invoice client was successfully created.' }
        format.json { render :show, status: :created, location: @invoice_client }
      else
        format.html { render :new }
        format.json { render json: @invoice_client.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /invoice_clients/1
  # PATCH/PUT /invoice_clients/1.json
  def update
    respond_to do |format|
      if @invoice_client.update(invoice_client_params)
        format.html { redirect_to @invoice_client, notice: 'Invoice client was successfully updated.' }
        format.json { render :show, status: :ok, location: @invoice_client }
      else
        format.html { render :edit }
        format.json { render json: @invoice_client.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /invoice_clients/1
  # DELETE /invoice_clients/1.json
  def destroy
    @invoice_client.destroy
    respond_to do |format|
      format.html { redirect_to invoice_clients_url, notice: 'Invoice client was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_invoice_client
      @invoice_client = InvoiceClient.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def invoice_client_params
      params.require(:invoice_client).permit(:Id_Invoice_Client, :Client_Id, :Id_Product_id, :Net_Value, :Brute_Value, :IVA)
    end
end
