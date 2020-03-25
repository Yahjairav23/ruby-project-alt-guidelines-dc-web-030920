

User.destroy_all
Exercise.destroy_all
Workout.destroy_all

#Users
yari = User.create(name: "Yari", age: 27, start_weight: 175)
uzoma = User.create(name: "Uzoma", age: 25, start_weight: 210)
maria = User.create(name: "Maria", age: 22, start_weight: 140)
oscar = User.create(name: "Oscar", age: 26, start_weight: 195)
michael = User.create(name: "Michael", age: 32, start_weight: 215)

#Exercise
plank = Exercise.create(name: "plank", muscle_group: "abs")
bicep_curls = Exercise.create(name: "bicep curls", muscle_group: "upper body")
squats = Exercise.create(name: "squats", muscle_group: "legs")
hiking = Exercise.create(name: "hiking", muscle_group: "cardio")
crunches = Exercise.create(name: "crunches", muscle_group: "abs")
lunges = Exercise.create(name: "lunges", muscle_group: "legs")
bench_press = Exercise.create(name: "bench press", muscle_group: "upper body")

#Workout
workout1 = Workout.create(user_id: yari.id, exercise_id: plank.id, date: "2020-03-23")
workout2 = Workout.create(user_id: uzoma.id, exercise_id: bicep_curls.id, date: "2020-03-20")
workout3 = Workout.create(user_id: maria.id, exercise_id: squats.id, date: "2020-03-18")
workout4 = Workout.create(user_id: yari.id, exercise_id: lunges.id, date: "2020-03-01")
workout5 = Workout.create(user_id: oscar.id, exercise_id: lunges.id, date: "2020-03-22")
workout6 = Workout.create(user_id: michael.id, exercise_id: hiking.id, date: "2020-03-23")
workout7 = Workout.create(user_id: uzoma.id, exercise_id: squats.id, date: "2020-03-20")
workout8 = Workout.create(user_id: uzoma.id, exercise_id: squats.id, date: "2020-03-26")


binding.pry
0