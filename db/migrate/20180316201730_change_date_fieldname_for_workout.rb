class ChangeDateFieldnameForWorkout < ActiveRecord::Migration[5.1]
  def change
    rename_column :workouts, :date, :workout_date
  end
end
