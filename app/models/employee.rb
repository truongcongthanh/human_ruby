class Employee < ActiveRecord::Base
  attr_accessible :eid, :lastname, :firstname
  self.table_name = 'employees'
  self.primary_key = 'id'
end
