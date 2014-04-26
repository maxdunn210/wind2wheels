class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.integer :user_id
      t.string :name
      t.string :year
      t.string :make
      t.string :model
      t.string :color
      t.string :license_plate
      t.string :vin
      t.integer :battery_kwh
      t.float :charging_rate_kw
      t.float :kwh_per_100_miles
      t.string :carwings_id
      t.string :carwings_password
      t.datetime :full_charge_time
      t.text :note

      t.timestamps
    end
  end
end
