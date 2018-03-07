# create_table "arcanas", force: :cascade do |t|
#   t.string "name"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
# end
#
# create_table "cards", force: :cascade do |t|
#   t.string "name"
#   t.string "number"
#   t.integer "arcana_id"
#   t.integer "suit_id"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
#   t.string "alternate_names", default: [], array: true
#   t.string "img_url"
# end
#
# create_table "suits", force: :cascade do |t|
#   t.string "name"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
#   t.string "alternate_names", default: [], array: true
# end
