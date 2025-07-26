class CreateQuotesWorks < ActiveRecord::Migration[8.0]
  def change
    create_table :quotes_works do |t|
      t.references :quote, null: false, foreign_key: true
      t.references :work, null: false, foreign_key: true

      t.timestamps
    end
  end
end
