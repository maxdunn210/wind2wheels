class CarAppController < ApplicationController

  def index
    @charging = session[:charger_on]
    @car = Car.first
  end

  def charging
    @charging = session[:charger_on]
    render partial: 'car_app/charging'
  end

  def charging_small
    @charging = session[:charger_on]
    render partial: 'car_app/charging_small'
  end

end