create_table "game_works", force: :cascade do |t|
  t.integer "work_id", null: false
  t.string "name_ja", null: false
  t.string "name_en", null: false
  t.string "name_ja_furigana", null: false
  t.datetime "created_at", null: false
  t.datetime "updated_at", null: false
end

add_index 'game_works', ['work_id'], name: 'index_game_works_on_work_id', using: :btree

add_foreign_key 'game_works', 'works', column: 'work_id', name: 'fk_game_works_work_id'
