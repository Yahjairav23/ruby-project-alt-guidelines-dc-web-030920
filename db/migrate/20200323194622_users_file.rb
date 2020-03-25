class UsersFile < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.integer :start_weight
      t.integer :current_weight, default: nil
    end
  end
end
