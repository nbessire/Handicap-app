class CreateCourses < ActiveRecord::Migration[8.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :location
      t.integer :par

      t.timestamps
    end
  end
end
