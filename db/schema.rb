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

ActiveRecord::Schema.define(version: 20161103185417) do

  create_table "boats", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.integer  "container"
    t.string   "location"
    t.integer  "job_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.float    "latitude"
    t.float    "longitude"
  end

  create_table "boats_jobs", id: false, force: :cascade do |t|
    t.integer "boat_id", null: false
    t.integer "job_id",  null: false
    t.index ["boat_id", "job_id"], name: "index_boats_jobs_on_boat_id_and_job_id"
    t.index ["job_id", "boat_id"], name: "index_boats_jobs_on_job_id_and_boat_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "origin"
    t.string   "destination"
    t.integer  "container"
    t.float    "price"
    t.integer  "boat_id"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.float    "latitude"
    t.float    "longitude"
  end

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "username"
    t.string   "dob"
    t.string   "gender"
    t.string   "user_type"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
