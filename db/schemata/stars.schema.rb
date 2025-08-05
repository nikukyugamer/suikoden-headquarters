create_table "stars", force: :cascade do |t|
  t.string "name_ja", null: false
  t.string "name_en", null: false
  t.datetime "created_at", null: false
  t.datetime "updated_at", null: false
end
