# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160301052123) do

  create_table "courses", force: :cascade do |t|
    t.string   "name"
    t.string   "duration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "emaployee_categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employee_departments", force: :cascade do |t|
    t.string   "name"
    t.string   "dept_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.date     "date_of_birth"
    t.integer  "age"
    t.string   "contact"
    t.string   "email"
    t.text     "address"
    t.string   "qualification"
    t.text     "experience"
    t.integer  "employee_category_id"
    t.integer  "employee_department_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "guardians", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "qualification"
    t.integer  "student_id"
    t.text     "address"
    t.string   "contact"
    t.string   "relation"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "email"
    t.date     "date_of_birth"
    t.integer  "age"
    t.string   "category"
    t.string   "cast"
    t.string   "relegion"
    t.text     "address"
    t.string   "contact"
    t.date     "admission_date"
    t.string   "admission_number"
    t.date     "enrollment_date"
    t.string   "enrollment_number"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
