class CarsController < ApplicationController

  before_action :authenticate_user!     # Devise

  before_action :set_user, only: [:index, :show, :create, :edit, :update, :destroy]
  before_action :set_car, only: [:show, :edit, :update, :destroy]

  # GET /cars
  # GET /cars.json
  def index
    @cars = Car.where(:user_id => params[:user_id])
  end

  # GET /cars/1
  # GET /cars/1.json
  def show
    #@car = Car.first
    @charging = true
  end

  # GET /cars/new
  def new
    @car = Car.new
  end

  # GET /cars/1/edit
  def edit
  end

  # POST /cars
  # POST /cars.json
  def create
    @car = Car.new(car_params)
    @car.user_id = @user.id

    respond_to do |format|
      if @car.save
        puts 'car save'
        format.html { redirect_to car_path(@car), notice: 'Car was successfully created.' }
        format.json { render :show, status: :created, location: @car }
      else
        format.html { render :new }
        format.json { render json: @car.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cars/1
  # PATCH/PUT /cars/1.json
  def update
    respond_to do |format|
      if @car.update(car_params)
        format.html { redirect_to @car, notice: 'Car was successfully updated.' }
        format.json { render :show, status: :ok, location: @car }
      else
        format.html { render :edit }
        format.json { render json: @car.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cars/1
  # DELETE /cars/1.json
  def destroy
    @car.destroy
    respond_to do |format|
      format.html { redirect_to cars_url }
      format.json { head :no_content }
    end
  end


  #def index
  #  @charging = true
  #end

  def charging
    @charging = true
    render partial: 'cars/charging'
  end


  private

    # Use callbacks to share common setup or constraints between actions.
    def set_car
      @car = Car.find(params[:id])
    end

    def set_user
      @user = current_user
    end


    # Never trust parameters from the scary internet, only allow the white list through.
    def car_params
      params.require(:car).permit(:name, :year, :make, :model, :color, :license_plate, :vin, :battery_kwh, :charging_rate_kw, :kwh_per_100_miles, :carwings_id, :carwings_password, :charge_end_time, :full_charge_time, :note)
    end

end
