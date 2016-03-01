json.array!(@guardians) do |guardian|
  json.extract! guardian, :id, :name, :email, :qualification, :student_id, :address, :contact, :relation
  json.url guardian_url(guardian, format: :json)
end
