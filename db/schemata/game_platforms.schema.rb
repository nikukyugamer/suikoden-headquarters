create_table "game_platforms", force: :cascade do |t|
  t.integer "game_work_id", null: false
  t.string "name_ja", null: false
  t.string "name_en", null: false
  t.string "name_ja_furigana", null: false
  t.string "release_date_ja", null: false
  t.string "release_date_en", null: false
  t.datetime "created_at", null: false
  t.datetime "updated_at", null: false
end

add_index 'game_platforms', ['game_work_id'], name: 'index_game_platforms_on_game_work_id', using: :btree

add_foreign_key 'game_platforms', 'game_works', column: 'game_work_id', name: 'fk_game_platforms_game_work_id'
