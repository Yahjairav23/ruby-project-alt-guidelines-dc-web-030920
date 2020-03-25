class ExercisesFile < ActiveRecord::Migration[5.2]
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :muscle_group
      t.string :exercise_demonstration_link, default: nil
    end
  end
end
