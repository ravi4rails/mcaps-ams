json.array!(@students) do |student|
  json.extract! student, :id, :first_name, :middle_name, :last_name, :email, :date_of_birth, :age, :category, :cast, :relegion, :address, :contact, :admission_date, :admission_number, :enrollment_date, :enrollment_number
  json.url student_url(student, format: :json)
end
