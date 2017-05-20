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

ActiveRecord::Schema.define(version: 20170516184152) do

  create_table "lines", force: :cascade do |t|
    t.integer  "seats_total"
    t.string   "departure_city"
    t.datetime "departure_time"
    t.string   "arrival_city"
    t.time     "arrival_time"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "tickets", force: :cascade do |t|
    t.integer  "line_id"
    t.integer  "seat"
    t.integer  "user_id"
    t.boolean  "bought"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "email"
    t.string   "password_digest"
    t.boolean  "admin"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
