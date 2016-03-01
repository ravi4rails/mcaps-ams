class Employee < ActiveRecord::Base
  belongs_to :employee_category
  belongs_to :employee_department
end
