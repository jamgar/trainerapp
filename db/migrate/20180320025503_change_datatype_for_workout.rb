class ChangeDatatypeForWorkout < ActiveRecord::Migration[5.1]
  def change
    change_column :workouts, :workout_date, :date
  end
end
