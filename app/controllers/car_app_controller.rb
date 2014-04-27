class CarAppController < ApplicationController

  def index
    @charging = true
  end

  def charging
    @charging = session[:charger_on]
    render partial: 'car_app/charging'
  end

end