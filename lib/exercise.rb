class Exercise < ActiveRecord::Base
    has_many :workout

    #4. I can search muscle exercise by muscle group
    def self.search_exercise_by_muscle_group(muscle)
        exercises = self.all.find_all do |exercise|                         ##Complete##
            exercise["muscle_group"] == muscle
        end.map {|instance| instance.name}

        if exercises == []
            return "Sorry. We don't have any workouts that work #{muscle}. We will try to get you workouts for this muscle group soon."
       else
           return exercises
       end
        # exercise_instances.select
        # binding.pry
    end
end
