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

ActiveRecord::Schema[7.0].define(version: 2024_03_20_133014) do
  create_table "attendances", force: :cascade do |t|
    t.date "worked_on"
    t.datetime "started_at"
    t.datetime "finished_at"
    t.string "note"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "plan_started_at"
    t.datetime "plan_finished_at"
    t.string "work_content"
    t.string "confirmed_request"
    t.boolean "approved", default: false
    t.string "work_type"
    t.string "communication_work_type"
    t.string "day_of_week"
    t.string "overwork_status"
    t.string "overtime_instructor"
    t.string "planner"
    t.string "work_status"
    t.boolean "overwork_chk", default: false
    t.string "send_approval"
    t.integer "unit_h_125"
    t.integer "unit_m_125"
    t.integer "unit_h_135"
    t.integer "unit_m_135"
    t.integer "unit_h_150"
    t.integer "unit_m_150"
    t.integer "unit_h_160"
    t.integer "unit_m_160"
    t.string "report_to"
    t.boolean "overwork_rep_chk", default: false
    t.string "aprv_confirmed"
    t.string "aprv_status"
    t.boolean "aprv_chk"
    t.index ["user_id"], name: "index_attendances_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "employee_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "remember_digest"
    t.integer "base_pay"
    t.boolean "admin", default: false
    t.string "department"
    t.string "job_title"
    t.boolean "superior", default: false
    t.boolean "office_staff", default: false
    t.boolean "report", default: false
    t.index ["email"], name: "index_users_on_email"
  end

  add_foreign_key "attendances", "users"
end
