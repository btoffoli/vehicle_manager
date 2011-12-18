class Vehicle < ActiveRecord::Base
  belongs_to :account
  belongs_to :VehicleModel
  has_many :part_vehicles
end
