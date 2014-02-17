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

ActiveRecord::Schema.define(version: 20140215224247) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: true do |t|
    t.datetime "start"
    t.datetime "end"
    t.integer  "schedule_id"
    t.text     "note"
    t.integer  "procedure_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "availabilities", force: true do |t|
    t.datetime "sunday_open"
    t.datetime "sunday_close"
    t.integer  "schedule_id"
    t.datetime "monday_open"
    t.datetime "monday_close"
    t.datetime "tuesday_open"
    t.datetime "tuesday_close"
    t.datetime "wednesday_open"
    t.datetime "wednesday_close"
    t.datetime "thursday_open"
    t.datetime "thursday_close"
    t.datetime "friday_open"
    t.datetime "friday_close"
    t.datetime "saturday_open"
    t.datetime "saturday_close"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "availability_exceptions", force: true do |t|
    t.string   "name"
    t.integer  "availability_id"
    t.datetime "open"
    t.datetime "close"
    t.boolean  "reoccurring"
    t.string   "frequency_of_reoccurance"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schedules", force: true do |t|
    t.integer  "scheduled_id"
    t.string   "scheduled_type"
    t.datetime "created_at"
    t.datetime "updated_at"
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
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
