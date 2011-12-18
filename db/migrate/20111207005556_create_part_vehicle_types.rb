class CreatePartVehicleTypes < ActiveRecord::Migration
  def change
    create_table :part_vehicle_types do |t|
      t.string :name
      t.integer :timeout
      t.integer :miles_travel

      t.timestamps
    end
  end
end
