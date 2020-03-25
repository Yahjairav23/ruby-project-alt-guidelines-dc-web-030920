class User < ActiveRecord::Base
    has_many :workouts
    has_many :exercises, through: :workouts

    #2. I can find a list of exercises I did on a day
    def exercise_on_a_day(date)
        #iterate through workouts and find workouts.user_id == self
        my_workouts = Workout.all.select do |workout|
            workout["user_id"] == self["id"]
        end
        # find where date == workout date
        workouts_for_date = my_workouts.find_all do |workouts|
            workouts["date"] == date
        end.map {|workout_instance| workout_instance.exercise_id}
        
        exercise_array = []
        exercise_list = workouts_for_date.each do |exercise_id|
            Exercise.all.each do |exercise_instances|
            if exercise_instances.id == exercise_id
                exercise_array << exercise_instances.name
            end
            # binding.pry
            end
            
        end
        
        if exercise_array == []
             return "Sorry. Doesn't look like you worked out on #{date}."
        else
            return exercise_array
        end

    end

    #fix bug for when 3. I can see what muscle_groups I'm working on, ON a specific day
    def muscle_groups_on_given_day(date)
        #loop through the workouts to find all of self.workouts
        #find the instances where workout.date == date
        #return the exercise.mucle_group
        
        exercise_name = self.exercise_on_a_day(date)
        # binding.pry
        if exercise_name == "Sorry. Doesn't look like you worked out on #{date}."
            # binding.pry
            return exercise_name
        else
            exercise_array = []
            exercise_name.each do |exercise|
                Exercise.all.each do |exercise_instances|
                    if exercise_instances.name == exercise
                        exercise_array << exercise_instances.muscle_group
                    end
                # binding.pry
                end
            end
            exercise_array
        end
        # binding.pry

    #     if exercise_array == []
    #         return "Sorry. Doesn't look like you worked out on #{date}."
    #    else
    #        return exercise_array
    #    end
        # binding.pry
        # exercises_id = muscles.find_all do |workout|
        #     workout["exercise_id"]
        # end

        # binding.pry

        # exercise = Exercise.all.find_all do |exercises|
        #     exercises.id == muscles
            # binding.pry
        # end
    end

    #1. I can return the list of all the days I worked out **
    def list_of_days_worked_out
        array = []
        workouts = Workout.all.find_all do |workout| 
            workout.user_id == self.id 
        end
        dates = workouts.each do |workout|
            array << workout.date
        end
        array
    end

    #5. I can log my weight at the end of the week
    def log_my_weight(weight)
        self.current_weight = weight
        self.save
        binding.pry
    end

    #6. I can also find out how much I lost compared to my starting weight
    def weight_lost
        weight_fluctuate = current_weight - start_weight
        
        if current_weight < start_weight
            return "Down #{weight_fluctuate}. We are making progress!"
        else
            return "Up #{weight_fluctuate}. We are making gains!"
        end
        # binding.pry
    end
    



end