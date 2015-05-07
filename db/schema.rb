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

ActiveRecord::Schema.define(version: 0) do

  create_table "iprecords", force: :cascade do |t|
    t.integer "iprecord_id"
    t.string  "ip_address"
    t.string  "start_time"
    t.string  "end_time"
    t.string  "server"
    t.string  "location"
  end

  add_index "iprecords", ["iprecord_id"], name: "index_iprecords_on_iprecord_id"

  create_table "monitors", force: :cascade do |t|
    t.integer "monitor_id"
    t.string  "location"
    t.string  "ip_address"
  end

  add_index "monitors", ["monitor_id"], name: "index_monitors_on_monitor_id"

  create_table "users", force: :cascade do |t|
    t.integer "user_id"
    t.string  "username"
    t.string  "password"
  end

  add_index "users", ["user_id"], name: "index_users_on_user_id"

  create_table "websites", force: :cascade do |t|
    t.integer "website_id"
    t.string  "server"
    t.integer "rank"
  end

  add_index "websites", ["website_id"], name: "index_websites_on_website_id"

end
