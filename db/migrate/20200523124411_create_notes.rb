class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.string :header
      t.string :content
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
