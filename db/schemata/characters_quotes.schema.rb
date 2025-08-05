create_table "characters_quotes", force: :cascade do |t|
  t.integer "character_id", null: false
  t.integer "quote_id", null: false
  t.datetime "created_at", null: false
  t.datetime "updated_at", null: false
end

add_index 'characters_quotes', ['character_id'], name: 'index_characters_quotes_on_character_id', using: :btree
add_index 'characters_quotes', ['quote_id'], name: 'index_characters_quotes_on_quote_id', using: :btree

add_foreign_key 'characters_quotes', 'characters', column: 'character_id', name: 'fk_characters_quotes_character_id'
add_foreign_key 'characters_quotes', 'quotes', column: 'quote_id', name: 'fk_characters_quotes_quote_id'
