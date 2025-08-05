create_table "character_nicknames", force: :cascade do |t|
  t.string "nickname_ja", null: false
  t.string "nickname_en", null: false
  t.string "nickname_ja_furigana", null: false
  t.datetime "created_at", null: false
  t.datetime "updated_at", null: false
end
