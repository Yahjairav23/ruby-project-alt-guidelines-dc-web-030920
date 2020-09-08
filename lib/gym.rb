class Gym < ActiveRecord::Base
    has_many :workouts
    has_many :users, through: :workouts

    #a list of exercise instances for this gym
    def exercise_instances
        Workout.all.select{|workout_instance| workout_instance.gym_id == self.id}
    end

    #a list of user instances for this gym
    def gym_user_instances
        user_names = []
        self.exercise_instances.each do |user|
            user_names << User.all.find {|user_instance| user_instance.id == user.user_id}
        end
        user_names
        
    end

    # 1. Gym can find out all of its users
    def find_all_gym_users
        self.gym_user_instances.map{|user| user.name }  
    end


    # 3. Gym can keep track of the ages of all the users, and can find the average age of users
    def gym_average_age
        total_users = self.find_all_gym_users.length
        user_ages = self.gym_user_instances.map{|user| user.age}.sum 
        average = user_ages.to_f / total_users.to_f
        average
    end

    # 2. Gym can find out last time user worked out.
    def last_workout_date
        workout_date_log = Hash.new
        date = self.exercise_instances.map do |workout|
            workout.date
        end.sort.last
        users = self.find_all_gym_users.last
        "#{users} : #{date}"


    end 

end