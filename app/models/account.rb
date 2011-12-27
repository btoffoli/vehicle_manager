class Account < ActiveRecord::Base
  has_many :vehicles
  
  def to_s
     "#{clazz} #{name} #{login}"
  end  
end
