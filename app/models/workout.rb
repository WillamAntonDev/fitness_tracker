class Workout < ApplicationRecord
  validates :category, presence: true
  validates :exercise_type, presence: true
  validates :duration, presence: true, numericality: { greater_than: 0 }
end
