json.array!(@cars) do |car|
  json.extract! car, :id, :name, :year, :make, :model, :color, :license_plate, :vin, :battery_kwh, :charging_rate_kw, :kwh_per_100_miles.integer, :carwings_id, :carwings_password, :full_charge_time, :note
  json.url car_url(car, format: :json)
end
