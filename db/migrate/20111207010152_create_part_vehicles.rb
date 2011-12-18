class CreatePartVehicles < ActiveRecord::Migration
  def change
    create_table :part_vehicles do |t|
      t.date :installed_date
      t.boolean :active

      t.timestamps
    end
  end
end
