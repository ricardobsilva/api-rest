class Api::V1::PeopleController < ApplicationController
  before_action :set_api_v1_person, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/people
  # GET /api/v1/people.json
  def index
    @api_v1_people = Api::V1::Person.all
  end

  # GET /api/v1/people/1
  # GET /api/v1/people/1.json
  def show
  end

  # GET /api/v1/people/new
  def new
    @api_v1_person = Api::V1::Person.new
  end

  # GET /api/v1/people/1/edit
  def edit
  end

  # POST /api/v1/people
  # POST /api/v1/people.json
  def create
    @api_v1_person = Api::V1::Person.new(api_v1_person_params)

    respond_to do |format|
      if @api_v1_person.save
        format.html { redirect_to @api_v1_person, notice: 'Person was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_person }
      else
        format.html { render :new }
        format.json { render json: @api_v1_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/people/1
  # PATCH/PUT /api/v1/people/1.json
  def update
    respond_to do |format|
      if @api_v1_person.update(api_v1_person_params)
        format.html { redirect_to @api_v1_person, notice: 'Person was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_person }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/people/1
  # DELETE /api/v1/people/1.json
  def destroy
    @api_v1_person.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_people_url, notice: 'Person was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_person
      @api_v1_person = Api::V1::Person.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_person_params
      params[:api_v1_person]
    end
end
