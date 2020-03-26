

User.destroy_all
Exercise.destroy_all
Workout.destroy_all
Gym.destroy_all

#Users
yari = User.create(name: "Yari", age: 27, start_weight: 175)
uzoma = User.create(name: "Uzoma", age: 25, start_weight: 210)
maria = User.create(name: "Maria", age: 22, start_weight: 140)
oscar = User.create(name: "Oscar", age: 26, start_weight: 195)
michael = User.create(name: "Michael", age: 32, start_weight: 215)
samantha = User.create(name: "Samantha", age: 34, start_weight: 315)
matt = User.create(name: "Matt", age: 28, start_weight: 180)
chuck = User.create(name: "Chuck", age: 36, start_weight: 315)
arnold = User.create(name: "Arnold", age: 30, start_weight: 315)
wendy = User.create(name: "Wendy", age: 41, start_weight: 315)
chine = User.create(name: "Chine", age: 28, start_weight: 167)
beza = User.create(name: "Beza", age: 25, start_weight: 170)
bret = User.create(name: "Bret", age: 29, start_weight: 200)
lindsay = User.create(name: "Lindsay", age: 27, start_weight: 167)
dawit = User.create(name: "Dawit", age: 19, start_weight: 210)
danny = User.create(name: "Danny", age: 29, start_weight: 210)
carla = User.create(name: "Carla", age: 25, start_weight: 160)
richard = User.create(name: "Richard", age: 28, start_weight: 180)
mary = User.create(name: "Mary", age: 27, start_weight: 215)
michael = User.create(name: "Michael", age: 29, start_weight: 170)
deijah = User.create(name: "Deijah", age: 27, start_weight: 180)
tomazye = User.create(name: "Tomazye", age: 26, start_weight: 256)
sebastian = User.create(name: "Sebastian", age: 26, start_weight: 200)
junior = User.create(name: "Junior", age: 27, start_weight: 217)
alex = User.create(name: "Alex", age: 27, start_weight: 178)
ann = User.create(name: "Ann", age: 30, start_weight: 168)

#Exercise
plank = Exercise.create(name: "plank", muscle_group: "abs", exercise_demonstration_link: "https://youtu.be/ASdvN_XEl_c")
bicep_curls = Exercise.create(name: "bicep curls", muscle_group: "upper body", exercise_demonstration_link: "https://youtu.be/uO_CNYidOw0")
squats = Exercise.create(name: "squats", muscle_group: "legs", exercise_demonstration_link: "https://youtu.be/aclHkVaku9U")
hiking = Exercise.create(name: "hiking", muscle_group: "cardio")
crunches = Exercise.create(name: "crunches", muscle_group: "abs", exercise_demonstration_link: "https://youtu.be/Xyd_fa5zoEU")
lunges = Exercise.create(name: "lunges", muscle_group: "legs", exercise_demonstration_link: "https://youtu.be/COKYKgQ8KR0")
bench_press = Exercise.create(name: "bench press", muscle_group: "upper body", exercise_demonstration_link: "https://youtu.be/wzq57DB5Ppg")
pull_up = Exercise.create(name: "pull up", muscle_group: "upper body", exercise_demonstration_link: "https://youtu.be/eGo4IYlbE5g")
bicycling = Exercise.create(name: "bicycling", muscle_group: "cardio")
push_up = Exercise.create(name: "push up", muscle_group: "abs", exercise_demonstration_link: "https://youtu.be/FaIpD_zfrJI")
dead_lift = Exercise.create(name: "dead lift", muscle_group: "legs", exercise_demonstration_link: "https://youtu.be/3UwO0fKukRw")
rowing = Exercise.create(name: "rowing", muscle_group: "upper body")
running = Exercise.create(name: "running", muscle_group: "cardio")
jumping_jacks = Exercise.create(name: "jumping jacks", muscle_group: "cardio", exercise_demonstration_link: "https://youtu.be/D8xo_I_TVhk")
rope_climbing = Exercise.create(name: "rope climbing", muscle_group: "upper body", exercise_demonstration_link: "https://youtu.be/uiOMbYDSENc")



#Gyms
gym1 = Gym.create(name: "24 Hour Fitness", city: "Bowie", state_abreviation: "MD")
gym2 = Gym.create(name: "Golds Gym", city: "Waldorf", state_abreviation: "MD")
gym3 = Gym.create(name: "LA Fitness", city: "Baltimore", state_abreviation: "MD")
gym4 = Gym.create(name: "Planet Fitness", city: "Alexandria", state_abreviation: "VA")
gym5 = Gym.create(name: "CrossFit", city: "Washington", state_abreviation: "DC")
gym6 = Gym.create(name: "Balance Gym", city: "Philadelphia", state_abreviation: "PA")
gym7 = Gym.create(name: "Equinox", city: "Washington", state_abreviation: "DC")
gym8 = Gym.create(name: "Orangetheory", city: "New York", state_abreviation: "NY")
gym9 = Gym.create(name: "Anytime Fitness", city: "Greensboro", state_abreviation: "NC")
gym10 = Gym.create(name: "UFC Gym", city: "Atlanta", state_abreviation: "GA")



#Workout
workout1 = Workout.create(user_id: yari.id, exercise_id: plank.id, date: "2020-03-23", gym_id: gym1.id)
workout2 = Workout.create(user_id: uzoma.id, exercise_id: bicep_curls.id, date: "2020-03-20", gym_id: gym2.id)
workout3 = Workout.create(user_id: maria.id, exercise_id: squats.id, date: "2020-03-18", gym_id: gym3.id)
workout4 = Workout.create(user_id: yari.id, exercise_id: lunges.id, date: "2020-03-01", gym_id: gym4.id)
workout5 = Workout.create(user_id: oscar.id, exercise_id: lunges.id, date: "2020-03-22", gym_id: gym5.id)
workout6 = Workout.create(user_id: michael.id, exercise_id: hiking.id, date: "2020-03-23", gym_id: gym6.id)
workout7 = Workout.create(user_id: uzoma.id, exercise_id: squats.id, date: "2020-03-20", gym_id: gym7.id)
workout8 = Workout.create(user_id: uzoma.id, exercise_id: bench_press.id, date: "2020-03-26", gym_id: gym8.id)
workout9 = Workout.create(user_id: samantha.id, exercise_id: hiking.id, date: "2020-03-22", gym_id: gym9.id)
workout10 = Workout.create(user_id: matt.id, exercise_id: crunches.id, date: "2020-03-23", gym_id: gym10.id)
workout11 = Workout.create(user_id: chuck.id, exercise_id: squats.id, date: "2020-03-21", gym_id: gym1.id)
workout12 = Workout.create(user_id: arnold.id, exercise_id: plank.id, date: "2020-03-12", gym_id: gym2.id)
workout13 = Workout.create(user_id: wendy.id, exercise_id: bicep_curls.id, date: "2020-03-13", gym_id: gym3.id)
workout14 = Workout.create(user_id: chine.id, exercise_id: lunges.id, date: "2020-03-14", gym_id: gym4.id)
workout15 = Workout.create(user_id: beza.id, exercise_id: lunges.id, date: "2020-03-22", gym_id: gym5.id)
workout16 = Workout.create(user_id: bret.id, exercise_id: bench_press.id, date: "2020-03-23", gym_id: gym6.id)
workout17 = Workout.create(user_id: lindsay.id, exercise_id: crunches.id, date: "2020-03-12", gym_id: gym7.id)
workout18 = Workout.create(user_id: danny.id, exercise_id: plank.id, date: "2020-03-10", gym_id: gym8.id)
workout19 = Workout.create(user_id: carla.id, exercise_id: hiking.id, date: "2020-03-13", gym_id: gym9.id)
workout20 = Workout.create(user_id: richard.id, exercise_id: squats.id, date: "2020-03-24", gym_id: gym10.id)
workout21 = Workout.create(user_id: mary.id, exercise_id: bicep_curls.id, date: "2020-03-26", gym_id: gym1.id)
workout22 = Workout.create(user_id: michael.id, exercise_id: squats.id, date: "2020-03-26", gym_id: gym2.id)
workout23 = Workout.create(user_id: deijah.id, exercise_id: bench_press.id, date: "2020-03-23", gym_id: gym3.id)
workout24 = Workout.create(user_id: tomazye.id, exercise_id: bench_press.id, date: "2020-03-02", gym_id: gym4.id)
workout25 = Workout.create(user_id: sebastian.id, exercise_id: squats.id, date: "2020-03-02", gym_id: gym5.id)
workout26 = Workout.create(user_id: junior.id, exercise_id: squats.id, date: "2020-03-12", gym_id: gym6.id)
workout27 = Workout.create(user_id: alex.id, exercise_id: squats.id, date: "2020-03-26", gym_id: gym7.id)
workout28 = Workout.create(user_id: ann.id, exercise_id: squats.id, date: "2020-03-26", gym_id: gym8.id)
workout29 = Workout.create(user_id: uzoma.id, exercise_id: squats.id, date: "2020-03-26", gym_id: gym9.id)
workout30 = Workout.create(user_id: yari.id, exercise_id: squats.id, date: "2020-03-14", gym_id: gym10.id)
workout31 = Workout.create(user_id: alex.id, exercise_id: squats.id, date: "2020-03-30", gym_id: gym7.id)







binding.pry
0