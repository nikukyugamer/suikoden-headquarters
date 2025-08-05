create_table "characters", force: :cascade do |t|
  t.integer "star_id", null: false
  t.string "name_ja", null: false
  t.string "name_en", null: false
  t.string "name_ja_furigana", null: false
  t.datetime "created_at", null: false
  t.datetime "updated_at", null: false
end

add_index 'characters', ['star_id'], name: 'index_characters_on_star_id', using: :btree

add_foreign_key 'characters', 'stars', column: 'star_id', name: 'fk_characters_star_id'
