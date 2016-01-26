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

ActiveRecord::Schema.define(version: 20160126184153) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "tutors", force: true do |t|
    t.string   "name"
    t.string   "surname"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "postcode"
    t.string   "house_number"
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "price_per_hour"
    t.string   "avatar"
    t.string   "about_me"
    t.string   "qualification"
    t.string   "availability"
    t.string   "experience"
    t.string   "tutoring_type"
    t.string   "subject"
    t.integer  "user_id"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "title"
    t.string   "middle_name"
    t.string   "gender"
    t.string   "postcode"
    t.string   "house_number"
    t.string   "house_name"
    t.string   "flat_number"
    t.string   "street"
    t.string   "address_line_two"
    t.string   "town"
    t.string   "county"
    t.string   "marital_status"
    t.string   "nationality"
    t.string   "mobile_phone"
    t.string   "home_phone"
    t.string   "work_phone"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "avatar"
    t.float    "latitude"
    t.float    "longitude"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
