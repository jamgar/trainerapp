class AddColumnsToWorkouts < ActiveRecord::Migration[5.1]
  def change
    add_column :workouts, :duration_in_min, :integer
    add_column :workouts, :distance, :integer
    rename_column :workouts, :duration, :duration_in_hr
  end
end
