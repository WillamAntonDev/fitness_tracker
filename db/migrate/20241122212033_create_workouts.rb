class CreateWorkouts < ActiveRecord::Migration[8.0]
  def change
    create_table :workouts do |t|
      t.string :exercise_type
      t.integer :duration
      t.date :date
      t.text :notes

      t.timestamps
    end
  end
end
