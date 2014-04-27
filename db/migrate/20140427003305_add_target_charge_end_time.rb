class AddTargetChargeEndTime < ActiveRecord::Migration
  def change
    add_column :cars, :charge_end_time, :time
  end
end
