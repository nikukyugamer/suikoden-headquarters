class CreateCharacterNicknames < ActiveRecord::Migration[8.0]
  def change
    create_table :character_nicknames do |t|
      t.string :nickname_ja, null: false, comment: 'キャラクターニックネーム（日本語）'
      t.string :nickname_en, null: false, comment: 'キャラクターニックネーム（英語）'
      t.string :nickname_ja_furigana, null: false, comment: 'キャラクターニックネーム（日本語ふりがな）'

      t.timestamps
    end
  end
end
