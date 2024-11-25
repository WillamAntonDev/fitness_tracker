Workout.create([
  {
    category: "Cycling",
    exercise_type: "Indoor Cycling",
    duration: 45,
    date: Date.today,
    notes: "High-intensity intervals",
    instructions: "Warm-up for 5 minutes, alternate 2 min high intensity, 3 min low intensity."
  },
  {
    category: "Strength Training",
    exercise_type: "Upper Body",
    duration: 30,
    date: Date.today,
    notes: "Focus on arms and back",
    instructions: "3 sets of 10 push-ups, 3 sets of 10 dumbbell rows, 3 sets of planks for 30 seconds."
  }
])
Workout.create!(
  category: "Cycling",
  exercise_type: "Indoor Cycling",
  duration: 45,
  date: Date.today,
  notes: "High-intensity intervals",
  instructions: "Warm up for 5 minutes. Alternate between 2 minutes of high resistance and 3 minutes of low resistance. Cool down for 5 minutes."
)
