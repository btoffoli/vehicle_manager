class PartVehicle < ActiveRecord::Base
  belongs_to :part_vehicle_type, :vehicle
end
