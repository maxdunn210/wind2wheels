class CarAppController < ApplicationController

  def index
    @charging = true
  end

  def charging
    @charging = true
    render partial: 'car_app/charging'
  end

end