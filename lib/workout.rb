class Workout < ActiveRecord::Base
    belongs_to :user
    belongs_to :exercise
    belongs_to :gym
end