class Person < ActiveRecord::Base
  has_one :house
  
  validates_presence_of :first_name
  validates_presence_of :last_name
end
