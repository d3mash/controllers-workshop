class CreateCommentRatings < ActiveRecord::Migration[6.0]
  def change
    create_table :comment_ratings do |t|
      t.integer :value
      t.references :comment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
