class Workout < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :workout_date, presence: true

  enum type: {
    run: 0,
    cycle: 1,
    swim: 2,
    strength: 3
  }
end
