# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_01_05_004201) do

  create_table "comments", force: :cascade do |t|
    t.string "comment_content"
    t.integer "employee_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.string "position"
    t.string "department"
  end

  create_table "snacks", force: :cascade do |t|
    t.integer "employee_id"
    t.string "name"
    t.boolean "keto"
    t.boolean "gluten_free"
    t.boolean "vegetarian"
    t.boolean "dairy_free"
    t.boolean "nut_free"
    t.string "picture"
  end

end
