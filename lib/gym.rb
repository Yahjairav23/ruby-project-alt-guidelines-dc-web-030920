class Gym < ActiveRecord::Base
    has_many :workouts
    has_many :users, through: :workouts
    # Gym can find out all of its users
    def find_all_gym_users
        workouts = Workout.all.select{|workout_instance| workout_instance.gym_id == self.id}
        # user_ids = workouts.find_all{|workout_instance| workout_instance.user_id}
    # binding.pry 
        user_names = []
        workouts.each do |user|
            user_names << User.all.find {|user_instance| user_instance.id == user.user_id}
        end
        user_names.map{|user| user.name}
        
        
    end
    # Gym can keep track of the ages of all the users, and can find the average age of users
    # Gym can find out last time user worked out.

end