require_relative '../lib/user.rb'

describe "User" do

    let (:yari) { User.new(name: "Yari", age: 27, start_weight: 156) }

    it "should return a list of exercises on a given day for a user" do 
        expect( yari.exercise_on_a_day("2020-23-03")).to eq(  )
    end











end