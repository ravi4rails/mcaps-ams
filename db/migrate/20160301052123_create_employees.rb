class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.date :date_of_birth
      t.integer :age
      t.string :contact
      t.string :email
      t.text :address
      t.string :qualification
      t.text :experience
      t.integer :employee_category_id
      t.integer :employee_department_id

      t.timestamps null: false
    end
  end
end
