class CreateCharactersQuotes < ActiveRecord::Migration[8.0]
  def change
    create_table :characters_quotes do |t|
      t.references :character, null: false, foreign_key: true
      t.references :quote, null: false, foreign_key: true

      t.timestamps
    end
  end
end
