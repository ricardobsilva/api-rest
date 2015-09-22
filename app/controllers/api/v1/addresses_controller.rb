class Api::V1::AddressesController < ApplicationController
  before_action :set_api_v1_address, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/addresses
  # GET /api/v1/addresses.json
  def index
    @api_v1_addresses = Api::V1::Address.all
  end

  # GET /api/v1/addresses/1
  # GET /api/v1/addresses/1.json
  def show
  end

  # GET /api/v1/addresses/new
  def new
    @api_v1_address = Api::V1::Address.new
  end

  # GET /api/v1/addresses/1/edit
  def edit
  end

  # POST /api/v1/addresses
  # POST /api/v1/addresses.json
  def create
    @api_v1_address = Api::V1::Address.new(api_v1_address_params)

    respond_to do |format|
      if @api_v1_address.save
        format.html { redirect_to @api_v1_address, notice: 'Address was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_address }
      else
        format.html { render :new }
        format.json { render json: @api_v1_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/addresses/1
  # PATCH/PUT /api/v1/addresses/1.json
  def update
    respond_to do |format|
      if @api_v1_address.update(api_v1_address_params)
        format.html { redirect_to @api_v1_address, notice: 'Address was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_address }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/addresses/1
  # DELETE /api/v1/addresses/1.json
  def destroy
    @api_v1_address.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_addresses_url, notice: 'Address was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_address
      @api_v1_address = Api::V1::Address.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_address_params
      params[:api_v1_address]
    end
end
