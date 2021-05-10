class CreateTcs < ActiveRecord::Migration[5.2]
  def change
    create_table :tcs do |t|
      t.string :sentence
      t.integer :sentence_order
      t.integer :rank_of_importance
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
