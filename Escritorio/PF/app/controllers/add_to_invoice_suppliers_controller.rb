class AddToInvoiceSuppliersController < ApplicationController
  before_action :set_add_to_invoice_supplier, only: [:show, :edit, :update, :destroy]

  # GET /add_to_invoice_suppliers
  # GET /add_to_invoice_suppliers.json
  def index
    @add_to_invoice_suppliers = AddToInvoiceSupplier.all
  end

  # GET /add_to_invoice_suppliers/1
  # GET /add_to_invoice_suppliers/1.json
  def show
  end

  # GET /add_to_invoice_suppliers/new
  def new
    @add_to_invoice_supplier = AddToInvoiceSupplier.new
  end

  # GET /add_to_invoice_suppliers/1/edit
  def edit
  end

  # POST /add_to_invoice_suppliers
  # POST /add_to_invoice_suppliers.json
  def create
    @add_to_invoice_supplier = AddToInvoiceSupplier.new(add_to_invoice_supplier_params)

    respond_to do |format|
      if @add_to_invoice_supplier.save
        format.html { redirect_to @add_to_invoice_supplier, notice: 'Add to invoice supplier was successfully created.' }
        format.json { render :show, status: :created, location: @add_to_invoice_supplier }
      else
        format.html { render :new }
        format.json { render json: @add_to_invoice_supplier.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /add_to_invoice_suppliers/1
  # PATCH/PUT /add_to_invoice_suppliers/1.json
  def update
    respond_to do |format|
      if @add_to_invoice_supplier.update(add_to_invoice_supplier_params)
        format.html { redirect_to @add_to_invoice_supplier, notice: 'Add to invoice supplier was successfully updated.' }
        format.json { render :show, status: :ok, location: @add_to_invoice_supplier }
      else
        format.html { render :edit }
        format.json { render json: @add_to_invoice_supplier.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /add_to_invoice_suppliers/1
  # DELETE /add_to_invoice_suppliers/1.json
  def destroy
    @add_to_invoice_supplier.destroy
    respond_to do |format|
      format.html { redirect_to add_to_invoice_suppliers_url, notice: 'Add to invoice supplier was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_add_to_invoice_supplier
      @add_to_invoice_supplier = AddToInvoiceSupplier.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def add_to_invoice_supplier_params
      params.require(:add_to_invoice_supplier).permit(:Document_ID_id, :Product_Id_id, :Quantity, :Previous_Quantity, :Post_Quantity)
    end
end
