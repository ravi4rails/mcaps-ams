class CreateGuardians < ActiveRecord::Migration
  def change
    create_table :guardians do |t|
      t.string :name
      t.string :email
      t.string :qualification
      t.integer :student_id
      t.text :address
      t.string :contact
      t.string :relation

      t.timestamps null: false
    end
  end
end
