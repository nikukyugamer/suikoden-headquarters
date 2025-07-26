class CreateCharacters < ActiveRecord::Migration[8.0]
  def change
    create_table :characters do |t|
      t.references :star, null: false, foreign_key: true, index: { unique: true }, comment: '宿星'

      t.string :name_ja, null: false, comment: 'キャラクター名（日本語）'
      t.string :name_en, null: false, comment: 'キャラクター名（英語）'
      t.string :name_ja_furigana, null: false, comment: 'キャラクター名（日本語ふりがな）'

      t.timestamps
    end
  end
end
