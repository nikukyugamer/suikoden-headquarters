create_table "characters_character_nicknames", force: :cascade do |t|
  t.integer "character_id", null: false
  t.integer "character_nickname_id", null: false
  t.datetime "created_at", null: false
  t.datetime "updated_at", null: false
end

add_index 'characters_character_nicknames', ['character_id'], name: 'index_characters_character_nicknames_on_character_id', using: :btree
add_index 'characters_character_nicknames', ['character_nickname_id'], name: 'index_characters_character_nicknames_on_character_nickname_id', using: :btree

add_foreign_key 'characters_character_nicknames', 'characters', column: 'character_id', name: 'fk_characters_character_nicknames_character_id'
add_foreign_key 'characters_character_nicknames', 'character_nicknames', column: 'character_nickname_id', name: 'fk_characters_character_nicknames_character_nickname_id'
