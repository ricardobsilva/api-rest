class Api::V1::PeopleController < ApplicationController
  before_action :set_api_v1_person, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/people
  # GET /api/v1/people.json
  def index
    @api_v1_people = Person.all
    render json: @api_v1_people
  end

  # GET /api/v1/people/1
  # GET /api/v1/people/1.json
  def show
    render json: @api_v1_person
  end

  # GET /api/v1/people/new
  def new
    @api_v1_person = Person.new
  end

  # GET /api/v1/people/1/edit
  def edit
  end

  # POST /api/v1/people
  # POST /api/v1/people.json
  def create
    @api_v1_person = Person.new(api_v1_person_params)

    
      if @api_v1_person.save 
        render json: @api_v1_person
      else
        render json: @api_v1_person.errors,  status: 400
      end
    
  end

  # PATCH/PUT /api/v1/people/1
  # PATCH/PUT /api/v1/people/1.json
  def update
       
      if @api_v1_person.update(api_v1_person_params) 
        render json: @api_v1_person
      else
        render json: @api_v1_person.errors,  status: 400
      end
    
  end

  # DELETE /api/v1/people/1
  # DELETE /api/v1/people/1.json
  def destroy
    if @api_v1_person.destroy
      render json: 'deletado'
    end
    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_person
      @api_v1_person = Person.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_person_params
      params.require(:person).permit(:name, :cpf, :ip_person, :email, :doer, :buyer, :addresses_attributes => [:id, :patio, :district , :number, :zip_code])
    end
end
