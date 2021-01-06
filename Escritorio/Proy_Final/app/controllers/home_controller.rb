class HomeController < ApplicationController
  before_action :set_home, only: [:show, :edit, :update, :destroy]
  
    def dashboard
      @invoice_clients = Invoice_client.all
      @invoice_clients_by_sum = Invoice_client.select(:client_id, :total_amount).group(:client_id).sum(:total_amount)
      @invoice_clients_by_salesmen = Invoice_client.select(:user_id, :total_amount, :created_at).group(:user_id).sum(:total_amount)
      #@orders_by_date = Order.where(:created_at => @selected_start_date..@selected_end_date)
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_home
        @home = Home.find(params[:id])
      end
  
      # Only allow a list of trusted parameters through.
      def home_params
        params.require(:home).permit(
        add_invoice_clients_attributes: [:client_id, :user_id, :net_amount, :total_iva, :total_amount, :create_client_invoice])
      end


end