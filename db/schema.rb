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

ActiveRecord::Schema.define(version: 2019_06_23_084332) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.integer "company_cd"
    t.integer "rr_cd"
    t.string "company_name"
    t.string "company_name_k"
    t.string "company_name_h"
    t.string "company_name_r"
    t.text "company_url"
    t.integer "company_type"
    t.integer "e_status"
    t.integer "e_sort"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lines", force: :cascade do |t|
    t.integer "line_cd"
    t.integer "company_cd"
    t.string "line_name"
    t.string "line_name_k"
    t.string "line_name_h"
    t.string "line_color_c"
    t.string "line_color_t"
    t.string "ine_type"
    t.integer "lon"
    t.integer "lat"
    t.integer "zoom"
    t.integer "e_status"
    t.integer "e_sort"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
