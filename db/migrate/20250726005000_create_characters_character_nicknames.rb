class CreateCharactersCharacterNicknames < ActiveRecord::Migration[8.0]
  def change
    create_table :characters_character_nicknames do |t|
      t.references :character, null: false, foreign_key: true, comment: 'キャラクター'
      t.references :character_nickname, null: false, foreign_key: true, comment: 'キャラクターニックネーム'

      t.timestamps
    end
  end
end
