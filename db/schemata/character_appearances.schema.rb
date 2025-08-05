create_table "character_appearances", force: :cascade do |t|
  t.integer "character_id", null: false
  t.integer "work_id", null: false
  t.string "notes", null: false
  t.datetime "created_at", null: false
  t.datetime "updated_at", null: false
end

add_index 'character_appearances', ['character_id'], name: 'index_character_appearances_on_character_id', using: :btree
add_index 'character_appearances', ['work_id'], name: 'index_character_appearances_on_work_id', using: :btree

add_foreign_key 'character_appearances', 'characters', column: 'character_id', name: 'fk_character_appearances_character_id'
add_foreign_key 'character_appearances', 'works', column: 'work_id', name: 'fk_character_appearances_work_id'
