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

ActiveRecord::Schema.define(version: 20180319191724) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "arcanas", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "card_meanings", force: :cascade do |t|
    t.integer "card_id"
    t.integer "meaning_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "reversed", default: false
  end

  create_table "cards", force: :cascade do |t|
    t.string "name"
    t.string "number"
    t.integer "arcana_id"
    t.integer "suit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "alternate_names", default: [], array: true
    t.string "img_url"
    t.integer "integer"
  end

  create_table "meanings", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "positions", force: :cascade do |t|
    t.integer "number"
    t.string "signifies"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "spread_id"
  end

  create_table "spreads", force: :cascade do |t|
    t.string "name"
    t.integer "number_of_cards"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "suits", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "alternate_names", default: [], array: true
    t.string "element"
    t.string "associated_class"
    t.string "faculty"
  end

end
