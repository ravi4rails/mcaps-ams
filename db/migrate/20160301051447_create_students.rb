class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :email
      t.date :date_of_birth
      t.integer :age
      t.string :category
      t.string :cast
      t.string :relegion
      t.text :address
      t.string :contact
      t.date :admission_date
      t.string :admission_number
      t.date :enrollment_date
      t.string :enrollment_number

      t.timestamps null: false
    end
  end
end
