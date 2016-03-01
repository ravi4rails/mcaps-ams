class EmployeeDepartment < ActiveRecord::Base
  has_many :employees
  validates :name, :dept_code, :presence => true
end
