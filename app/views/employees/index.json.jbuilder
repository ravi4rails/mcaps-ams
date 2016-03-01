json.array!(@employees) do |employee|
  json.extract! employee, :id, :first_name, :middle_name, :last_name, :date_of_birth, :age, :contact, :email, :address, :qualification, :experience, :employee_category_id, :employee_department_id
  json.url employee_url(employee, format: :json)
end
