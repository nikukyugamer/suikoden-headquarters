create_table "quotes", force: :cascade do |t|
  t.string "context_ja", null: false
  t.string "context_en", null: false
  t.string "scene", null: false
  t.datetime "created_at", null: false
  t.datetime "updated_at", null: false
end
