class CreateWorkout < ActiveRecord::Migration[5.1]
  def change
    create_table :workouts do |t|
      t.string :title
      t.datetime :date
      t.integer :duration
      t.integer :type_id
      t.text :comment
      t.integer :user_id

      t.timestamps
    end
  end
end
