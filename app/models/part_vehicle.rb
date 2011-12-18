class PartVehicle < ActiveRecord::Base
  belongs_to [:PartVehicleType, :Vehicle]
end
