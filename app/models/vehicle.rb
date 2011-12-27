class Vehicle < ActiveRecord::Base
  belongs_to :account
  belongs_to :vehicle_model
  has_many :part_vehicles
  
  def check_account
    
  end
end
