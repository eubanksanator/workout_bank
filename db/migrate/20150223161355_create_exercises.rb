class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :name
      t.integer :reps
      t.integer :sets
      t.text :description
      t.integer :muscle_group_id
      t.integer :difficulty_id

      t.timestamps

    end
  end
end
