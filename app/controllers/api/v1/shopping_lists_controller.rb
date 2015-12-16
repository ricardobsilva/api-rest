class Api::V1::ShoppingListsController < ApplicationController
  before_action :set_api_v1_shopping_list, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/shopping_lists
  # GET /api/v1/shopping_lists.json
  def index
    @api_v1_shopping_lists = ShoppingList.all
  end

  # GET /api/v1/shopping_lists/1
  # GET /api/v1/shopping_lists/1.json
  def show
  end

  # GET /api/v1/shopping_lists/new
  def new
    @api_v1_shopping_list = ShoppingList.new
  end

  # GET /api/v1/shopping_lists/1/edit
  def edit
  end

  # POST /api/v1/shopping_lists
  # POST /api/v1/shopping_lists.json
  def create
    @api_v1_shopping_list = ShoppingList.new(api_v1_shopping_list_params)
    @api_v1_shopping_list.save
    #@shopping_list = ShoppingList.new(api_v1_shopping_list_params)
    
    
      #if @api_v1_shopping_list.save
      #  render json: @api_v1_shopping_list
      #else
      #  render json: @api_v1_shopping_list.errors
      #end
    
  end

  # PATCH/PUT /api/v1/shopping_lists/1
  # PATCH/PUT /api/v1/shopping_lists/1.json
  def update
    respond_to do |format|
      if @api_v1_shopping_list.update(api_v1_shopping_list_params)
        format.html { redirect_to @api_v1_shopping_list, notice: 'Shopping list was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_shopping_list }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_shopping_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/shopping_lists/1
  # DELETE /api/v1/shopping_lists/1.json
  def destroy
    @api_v1_shopping_list.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_shopping_lists_url, notice: 'Shopping list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_shopping_list
      @api_v1_shopping_list = Api::V1::ShoppingList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_shopping_list_params
      list_params = params.require(:shopping_list).permit(:status, :person_id ,  {shopping_list_items: [:item_id ]} )
      list_params[:shopping_list_items_attributes] = list_params.delete :shopping_list_items
      list_params
    end
end
