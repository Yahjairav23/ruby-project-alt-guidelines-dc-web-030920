class ExercisesFile < ActiveRecord::Migration[5.2]
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :muscle_group
    end
  end
end
