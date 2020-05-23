class CreateNoteRatings < ActiveRecord::Migration[6.0]
  def change
    create_table :note_ratings do |t|
      t.integer :value
      t.references :note, null: false, foreign_key: true

      t.timestamps
    end
  end
end
