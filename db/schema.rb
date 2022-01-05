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

ActiveRecord::Schema.define(version: 2022_01_05_050917) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "concert_groups", force: :cascade do |t|
    t.bigint "concert_id"
    t.bigint "group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["concert_id"], name: "index_concert_groups_on_concert_id"
    t.index ["group_id"], name: "index_concert_groups_on_group_id"
  end

  create_table "concerts", force: :cascade do |t|
    t.string "name"
    t.time "duration"
    t.integer "asistentes"
    t.date "event_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "group_id"
    t.index ["group_id"], name: "index_concerts_on_group_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.integer "members"
    t.date "debut"
    t.integer "team"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "concert_groups", "concerts"
  add_foreign_key "concert_groups", "groups"
  add_foreign_key "concerts", "groups"
end
