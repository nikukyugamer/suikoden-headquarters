create_table "works", force: :cascade do |t|
  t.string "name_ja", null: false
  t.string "name_en", null: false
  t.string "name_ja_furigana", null: false
  t.datetime "created_at", null: false
  t.datetime "updated_at", null: false
end

add_index 'works', ['name_en'], name: 'index_works_on_name_en', unique: true, using: :btree
add_index 'works', ['name_ja'], name: 'index_works_on_name_ja', unique: true, using: :btree
add_index 'works', ['name_ja_furigana'], name: 'index_works_on_name_ja_furigana', unique: true, using: :btree
