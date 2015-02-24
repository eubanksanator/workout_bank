Difficulty.create!([
  {level: "Beginner"},
  {level: "Intermediate"},
  {level: "Advance"}
])
Exercise.create!([
  {name: "chest press", reps: 20, sets: 3, description: "", muscle_group_id: 1, difficulty_id: 2},
  {name: "cable flys", reps: 15, sets: 3, description: "standing cable flys ", muscle_group_id: 1, difficulty_id: 1},
  {name: "incline bench press", reps: 12, sets: 3, description: "", muscle_group_id: 1, difficulty_id: 1},
  {name: "decline bench press", reps: 15, sets: 3, description: "Machine decline plates", muscle_group_id: 1, difficulty_id: 1},
  {name: "Lat pull down", reps: 15, sets: 3, description: "Seated lat pull down ", muscle_group_id: 2, difficulty_id: 1},
  {name: "seated row", reps: 15, sets: 3, description: "nice and tight squeeze for the back", muscle_group_id: 2, difficulty_id: 1},
  {name: "deadlift", reps: 10, sets: 5, description: "ohhh yeah dont shit your pants back workout", muscle_group_id: 2, difficulty_id: 2},
  {name: "dumbbell bicep curl", reps: 15, sets: 3, description: "standing straight up with no swinging of body ", muscle_group_id: 4, difficulty_id: 1},
  {name: "tricep push down", reps: 15, sets: 3, description: "standing rope push down", muscle_group_id: 4, difficulty_id: 1},
  {name: "incline EZ bar curl", reps: 15, sets: 4, description: "lay stomach on incline bench with arms hanging over with no support", muscle_group_id: 4, difficulty_id: 2},
  {name: "squats", reps: 15, sets: 3, description: "ass gobbler", muscle_group_id: 3, difficulty_id: 1},
  {name: "leg curls", reps: 15, sets: 4, description: "slow concentraded", muscle_group_id: 3, difficulty_id: 1},
  {name: "shoulder press", reps: 15, sets: 3, description: "seated dumbbell shoulder press", muscle_group_id: 6, difficulty_id: 1},
  {name: "side raises", reps: 20, sets: 4, description: "seated dumbbell side raises ", muscle_group_id: 6, difficulty_id: 1},
  {name: "crunches", reps: 25, sets: 3, description: "you know what to do damnit", muscle_group_id: 5, difficulty_id: 1},
  {name: "hanging leg raises", reps: 15, sets: 3, description: "hang and lift legs up squeezing core", muscle_group_id: 5, difficulty_id: 3}
])
MuscleGroup.create!([
  {location: "Chest"},
  {location: "Back"},
  {location: "Legs"},
  {location: "Arms"},
  {location: "Core"},
  {location: "Shoulders"}
])
