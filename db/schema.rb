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

ActiveRecord::Schema[7.0].define(version: 2023_01_25_072047) do
  create_table "customer_details", charset: "utf8mb4", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "middle_name"
    t.string "gender"
    t.string "reference_code"
    t.string "comment"
    t.string "email"
    t.string "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customer_form_program_ships", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "customer_form_id"
    t.bigint "program_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_form_id"], name: "index_customer_form_program_ships_on_customer_form_id"
    t.index ["program_id"], name: "index_customer_form_program_ships_on_program_id"
  end

  create_table "customer_forms", charset: "utf8mb4", force: :cascade do |t|
    t.integer "efficiency"
    t.integer "effectiveness"
    t.integer "quantity_of_facilities"
    t.string "name"
    t.string "reference_code"
    t.string "person_in_charge"
    t.decimal "amount_of_ec_received", precision: 10
    t.datetime "contigency_and_date"
    t.decimal "amount_of_ec_benefit", precision: 10
    t.string "source_of_info_on_ecc_ecp"
    t.string "comment_on_ecc_ecp"
    t.string "name_occupation_and_company"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "programs", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", charset: "utf8mb4", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "role", default: "", null: false
    t.boolean "already_fill_up?"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
