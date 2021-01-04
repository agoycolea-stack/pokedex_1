class InvoiceSuppliersController < ApplicationController
  before_action :set_invoice_supplier, only: [:show, :edit, :update, :destroy]

  # GET /invoice_suppliers
  # GET /invoice_suppliers.json
  def index
    @invoice_suppliers = InvoiceSupplier.all
  end

  # GET /invoice_suppliers/1
  # GET /invoice_suppliers/1.json
  def show
  end

  # GET /invoice_suppliers/new
  def new
    @invoice_supplier = InvoiceSupplier.new
  end

  # GET /invoice_suppliers/1/edit
  def edit
  end

  # POST /invoice_suppliers
  # POST /invoice_suppliers.json
  def create
    @invoice_supplier = InvoiceSupplier.new(invoice_supplier_params)

    respond_to do |format|
      if @invoice_supplier.save
        format.html { redirect_to @invoice_supplier, notice: 'Invoice supplier was successfully created.' }
        format.json { render :show, status: :created, location: @invoice_supplier }
      else
        format.html { render :new }
        format.json { render json: @invoice_supplier.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /invoice_suppliers/1
  # PATCH/PUT /invoice_suppliers/1.json
  def update
    respond_to do |format|
      if @invoice_supplier.update(invoice_supplier_params)
        format.html { redirect_to @invoice_supplier, notice: 'Invoice supplier was successfully updated.' }
        format.json { render :show, status: :ok, location: @invoice_supplier }
      else
        format.html { render :edit }
        format.json { render json: @invoice_supplier.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /invoice_suppliers/1
  # DELETE /invoice_suppliers/1.json
  def destroy
    @invoice_supplier.destroy
    respond_to do |format|
      format.html { redirect_to invoice_suppliers_url, notice: 'Invoice supplier was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_invoice_supplier
      @invoice_supplier = InvoiceSupplier.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def invoice_supplier_params
      params.require(:invoice_supplier).permit(:Id_Invoice_Supplier, :Supplier_Id, :Id_Product_id, :Net_Value, :Brute_Value, :IVA)
    end
end
