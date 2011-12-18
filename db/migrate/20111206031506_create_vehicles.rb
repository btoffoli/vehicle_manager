class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :nickname
      t.integer :km

      t.timestamps
    end
  end
end
