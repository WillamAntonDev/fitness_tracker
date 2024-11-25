require 'rails_helper'

RSpec.describe Workout, type: :model do
  it "is valid with valid attributes" do
    workout = Workout.new(
      category: "Cycling",
      exercise_type: "Indoor Cycling",
      duration: 45,
      date: Date.today,
      notes: "High-intensity intervals",
      instructions: "Warm up for 5 minutes, then alternate 1 minute high effort and 2 minutes recovery for 30 minutes."
    )
    expect(workout).to be_valid
  end

  it "is invalid without a category" do
    workout = Workout.new(category: nil)
    expect(workout).not_to be_valid
  end
end
