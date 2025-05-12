class AddUserToRounds < ActiveRecord::Migration[8.0]
  def change
    add_reference :rounds, :user, null: true, foreign_key: true
  end
end
