class CreateRounds < ActiveRecord::Migration[8.0]
  def change
    create_table :rounds do |t|
      t.string :user_name
      t.references :course, null: false, foreign_key: true
      t.date :date
      t.integer :strokes

      t.timestamps
    end
  end
end
