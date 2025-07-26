class CreateCharacterAppearances < ActiveRecord::Migration[8.0]
  def change
    create_table :character_appearances do |t|
      t.references :character, null: false, foreign_key: true
      t.references :work, null: false, foreign_key: true

      t.string :notes, null: false, comment: '備考'

      t.timestamps
    end
  end
end
