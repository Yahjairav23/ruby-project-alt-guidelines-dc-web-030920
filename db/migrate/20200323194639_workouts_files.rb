class WorkoutsFiles < ActiveRecord::Migration[5.2]
  def change
    create_table :workouts do |t|
      t.integer :user_id
      t.integer :exercise_id
      t.string :date
    end
  end
end
