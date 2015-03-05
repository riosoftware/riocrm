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

ActiveRecord::Schema.define(version: 20150304100431) do

  create_table "activities", force: :cascade do |t|
    t.string   "subject"
    t.string   "comments"
    t.date     "due_date"
    t.integer  "priority"
    t.integer  "status"
    t.integer  "contact_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "activities", ["contact_id"], name: "index_activities_on_contact_id"

  create_table "contacts", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "title"
    t.string   "email"
    t.string   "phone_number"
    t.string   "mobile_number"
    t.string   "department"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "address"
    t.string   "postcode"
    t.string   "city"
    t.string   "state"
    t.string   "country"
  end

end
