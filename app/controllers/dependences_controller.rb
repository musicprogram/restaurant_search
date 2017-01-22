class DependencesController < ApplicationController
  before_action :set_dependence, only: [:show, :edit, :update, :destroy]
  before_action :set_restaurant
  # GET /dependences
  # GET /dependences.json
  def index
    @dependences = @restaurant.dependences.all
    respond_to {|format| format.js}

  end

  # GET /dependences/1
  # GET /dependences/1.json
  def show
  end

  # GET /dependences/new
  def new
    @dependence = Dependence.new
    respond_to {|format| format.js}
  end

  # GET /dependences/1/edit
  def edit
  end

  # POST /dependences
  # POST /dependences.json
  def create
    @dependence = Dependence.new(dependence_params)
    @dependence.restaurant_id = @restaurant.id
    respond_to do |format|
      if @dependence.save
        format.html { redirect_to @dependence, notice: 'Dependence was successfully created.' }
        format.json { render :show, status: :created, location: @dependence }
        format.js
      else
        format.js { render :new }
      end
    end
  end

  # PATCH/PUT /dependences/1
  # PATCH/PUT /dependences/1.json
  def update
    respond_to do |format|
      if @dependence.update(dependence_params)
        format.html { redirect_to @dependence, notice: 'Dependence was successfully updated.' }
        format.json { render :show, status: :ok, location: @dependence }
      else
        format.html { render :edit }
        format.json { render json: @dependence.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dependences/1
  # DELETE /dependences/1.json
  def destroy
    @dependence.destroy
    respond_to do |format|
      format.html { redirect_to dependences_url, notice: 'Dependence was successfully destroyed.' }
      format.json { head :no_content }
      format.js
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dependence
      @dependence = Dependence.find(params[:id])if params[:id] 
    end

    def set_restaurant
      @restaurant = Restaurant.find(params[:restaurant_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dependence_params
      params.require(:dependence).permit(:restaurant_id, :city_id, :zone_id)
    end
end
