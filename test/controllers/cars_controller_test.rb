require 'test_helper'

class CarsControllerTest < ActionController::TestCase
  setup do
    @car = cars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create car" do
    assert_difference('Car.count') do
      post :create, car: { battery_kwh: @car.battery_kwh, carwings_id: @car.carwings_id, carwings_password: @car.carwings_password, charging_rate_kw: @car.charging_rate_kw, color: @car.color, full_charge_time: @car.full_charge_time, kwh_per_100_miles: @car.kwh_per_100_miles, license_plate: @car.license_plate, make: @car.make, model: @car.model, name: @car.name, note: @car.note, vin: @car.vin, year: @car.year }
    end

    assert_redirected_to car_path(assigns(:car))
  end

  test "should show car" do
    get :show, id: @car
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @car
    assert_response :success
  end

  test "should update car" do
    patch :update, id: @car, car: { battery_kwh: @car.battery_kwh, carwings_id: @car.carwings_id, carwings_password: @car.carwings_password, charging_rate_kw: @car.charging_rate_kw, color: @car.color, full_charge_time: @car.full_charge_time, kwh_per_100_miles: @car.kwh_per_100_miles, license_plate: @car.license_plate, make: @car.make, model: @car.model, name: @car.name, note: @car.note, vin: @car.vin, year: @car.year }
    assert_redirected_to car_path(assigns(:car))
  end

  test "should destroy car" do
    assert_difference('Car.count', -1) do
      delete :destroy, id: @car
    end

    assert_redirected_to cars_path
  end
end
