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

ActiveRecord::Schema.define(version: 20170409093033) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "search_keys", force: :cascade do |t|
    t.string "key"
    t.boolean "active", default: true
    t.datetime "search_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "search_results", force: :cascade do |t|
    t.bigint "search_key_id"
    t.integer "offset"
    t.integer "search_total"
    t.json "results"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["search_key_id"], name: "index_search_results_on_search_key_id"
  end

  add_foreign_key "search_results", "search_keys"
end
