class UtilityController < ApplicationController

  def index
  end

  def change
    session[:price_per_kwh] = params[:price_per_kwh].to_i if params[:price_per_kwh]
    session[:kwh_to_full] = params[:kwh_to_full].to_i if params[:kwh_to_full]
    session[:wind_on] = (params[:wind_on] == 'true') if params[:wind_on]
    session[:charger_on] = charger_state
    render nothing: true
  end

  def charger_state
    # value from the spinner on the user mobile app - in kW
    power_rate_max = 3

    #charge needed data coming from the third party simulator - in kWh
    charge_needed = session[:kwh_to_full].to_i

    #current time - time of the platform
    time_now = Time.zone.now

    #end of charge time - data entered by the user on the mobile app
    t_end = time_now + 2.hours

    #price per kWh coming from the third party simulator - in cents per kWh
    price= session[:price_per_kwh].to_i

    #static values for the moment
    price_max_ok_wind = 15
    price_max_no_wind = 10

    #boolean wind coming from the third party simulator - true or false
    wind = session[:wind_on]

    hours_left = (t_end - time_now) / 3600

puts "hours_left=#{hours_left}"
puts "charge_needed=#{charge_needed}"
puts  "power_rate_max * hours_left=#{power_rate_max * hours_left}"

    if charge_needed <= power_rate_max * hours_left
      puts "ok1"
      if wind
        puts "ok2"
        if price <= price_max_ok_wind
          puts "charge 1"
          charger_on = true
        else
          puts "no charge1"
          charger_on = false
        end
      else
        puts "ok3"
        if price <= price_max_no_wind
          puts "charge 2"
          charger_on = true
        else
          puts "no charge2"
          charger_on = false
        end
      end
    else
      puts "charge 3"
      charger_on = true
    end

    charger_on
  end

end