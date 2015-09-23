class Api::V1::AddressesController < ApplicationController
  before_action :set_api_v1_address, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/addresses
  # GET /api/v1/addresses.json
  def index
    @api_v1_addresses = Address.all
    render json: @api_v1_addresses
  end

  # GET /api/v1/addresses/1
  # GET /api/v1/addresses/1.json
  def show
    render json: @api_v1_address
  end

  # GET /api/v1/addresses/new
  def new
    @api_v1_address = Address.new
  end

  # GET /api/v1/addresses/1/edit
  def edit
  end

  # POST /api/v1/addresses
  # POST /api/v1/addresses.json
  def create
    @api_v1_address = Address.new(api_v1_address_params)

    
      if @api_v1_address.save
        render json: @api_v1_address
      else
        render json: @api_v1_address.errors,  status: 400
      end
    
  end

  # PATCH/PUT /api/v1/addresses/1
  # PATCH/PUT /api/v1/addresses/1.json
  def update
    
      if @api_v1_address.update(api_v1_address_params)
        render json: @api_v1_address
      else
        render json: @api_v1_address.errors,  status: 400
      end
    
  end

  # DELETE /api/v1/addresses/1
  # DELETE /api/v1/addresses/1.json
  def destroy
    if @api_v1_address.destroy
      render json: 'deletado'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_address
      @api_v1_address = Address.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_address_params
      params.require(:address).permit(:patio, :district, :number, :zip_code)
    end
end
