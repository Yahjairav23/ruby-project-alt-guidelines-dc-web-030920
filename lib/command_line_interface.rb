#Greeting to our Users
class CLI 

    def fit_me_plan_image
        puts <<-'EOF' 
        -............- `...--                                                                      .............`   ``..-.                                 
        `-....-```.---------.    `.--:                                                             ``-...-..-...-- ``...--                                 
         .-..-- `-- `.``....-``---...-..-`            `...-.`...--``...--`   `...--..`               -...:   .`..:` .`..-.    `..-...`    ``.-.  `.-.`     
         .-..--.---.   --...-` .`-...-...`           `:...----...---....-:  .-..-`.----              -...-````.---  ``..-.  ``-.`...-:`  ``..---....-:     
         .-..--`.-:`    --..-`   :..-:                .-..-- .-..-- `:..-: .-..----.--:              -..----..-.`   .`.--.  ```..``.--.  ``..-- ``..-:`    
         .-----  ..     -----`   :..-:` `             .-.--- `-.---  :.--: .-.---````.`              -.--:`         .`---.   `.-...----   `----  ``--:`    
       `-------..      -:----:`  -------:`           `:----:`--.--:..:.---- .---------.            ``..----`       ``.----``.---...---:-  `---:   .----`   
       `........`      .......`   ......`            `-.....`-.....``......   `.....``             `.......`       `......` `....``.-.` `......  `....-`   
                                         .-.--------:                                  ..----------                                                        
                                         `..........-                                  ............                                                        
                                                                                                     
       EOF
    end

    def flash
        msg = "                                                        LOADING FITMEPLAN                                                    "
        # Witty Quote to Create
        # system "say #{msg}"
        puts ""
        5.times do 
            print "\r#{ ' ' * msg.size}"
            sleep 0.5
            print "\r#{msg.colorize(:red)}"
            sleep 0.5
        end
        puts ""
    end

    def welcome
        puts "Welcome to FitMePlan, the best fitness log for fitness gurus in the world"
        puts "Please enter your name here to log into your records:"
    end

    def user_input
        jquery = gets
        # binding.pry
        @user_name = jquery.strip.capitalize #gets rid of endline
        # Save user to variable, then find instance of that user.
    end

    def user_instance 
        @user_instance = User.all.find do |instance|
            @user_name == instance.name
        end
    end

    def user_instance_check #*******
        
            puts "--------------------------------------------------------------------"
            puts "Sorry, you don't appear to have an account with us. Would you like to make one? (enter 'yes' to make an account or 'no' to exit application)"
            # new_user_input
            # new_user
            # binding.pry
    
    end

    def new_user_input #*******
        set_up = gets
        @user_set_up_response = set_up.strip
    end

    def new_user #*******
        if @user_set_up_response == "yes"
            new_user_set
            User.create(name: @name, age: @age, start_weight: @start_weight)

        else
            puts "Thank you for using FitMePlan today. We hope you will join us soon!"
            exit
        end
    
    end

    def new_user_set #*******
        puts "What is your name?"
        @name = gets.strip.capitalize
        puts "How old are you?"
        @age = gets.strip.to_i
        puts "What is you current weight"
        @start_weight = gets.strip.to_i
    end

    def options_greeting
        puts "---------------------------------------------------------------"
        puts "Hello, #{@user_name}. How can we help you today?"
        puts "---------------------------------------------------------------"
    end

    #Colorized the puts comments.  Let me know if you like any of the colors or if we should leave it white.
    def options_prompt
        
        puts "Please enter a number for one of the following options:"
        puts "1. Get a list of all the days I worked out.".colorize(:cyan)
        puts " ---------------------------------------------------------------"
        puts "2. Find all of the workouts I did on a specific date.".colorize(:cyan)
        puts " ---------------------------------------------------------------"
        puts "3. Find out what muscle groups I worked out on a specific date.".colorize(:cyan)
        puts " ---------------------------------------------------------------"
        puts "4. Find exercises that work a particuar muscle group.".colorize(:cyan)
        puts " ---------------------------------------------------------------"
        puts "5. Log my current weight.".colorize(:cyan)
        puts " ---------------------------------------------------------------"
        puts "6. Find out how much weight I have lost/gained.".colorize(:cyan)
        puts " ---------------------------------------------------------------"
        puts "7. Log Out".colorize(:cyan)
    end

    def option_input
        jquery = gets
        @user_selection = jquery.strip #gets rid of endline
        # binding.pry
        #this method prompts and saves the users selection from the prompt to variable
    end

    def return_to_main_menu
        puts "Enter any key to return to the main menu."
        gets
        options_prompt
        option_input
        user_method_selection
    end

    def selection_one
        puts " ---------------------------------------------------------------"
        puts user_instance.list_of_days_worked_out
        puts " ---------------------------------------------------------------"
        return_to_main_menu
    end

    def selection_two
        puts "What date should we look for? (format: yyyy-mm-dd)"
        date = gets.strip
        puts " ---------------------------------------------------------------"
        puts user_instance.exercise_on_a_day(date) 
        puts " ---------------------------------------------------------------"
        return_to_main_menu
    end

    def selection_three
        puts "What date should we look for? (format: yyyy-mm-dd)"
        date = gets.strip
        puts " ---------------------------------------------------------------"
        puts user_instance.muscle_groups_on_given_day(date) 
        puts " ---------------------------------------------------------------"
        return_to_main_menu
    end

    def selection_four
        puts "What muscle group would you like to find workouts for today?"
        muscle = gets.strip
        puts " ---------------------------------------------------------------"
        puts Exercise.search_exercise_by_muscle_group(muscle)
        puts " ---------------------------------------------------------------"
        return_to_main_menu
    end

    def selection_five
        puts "What is your current weight?"
        weight = gets.strip.to_i
        puts " ---------------------------------------------------------------"
        puts user_instance.log_my_weight(weight)
        puts " ---------------------------------------------------------------"
        return_to_main_menu
    end

    def selection_six
        puts " ---------------------------------------------------------------"
        puts user_instance.weight_lost
        puts " ---------------------------------------------------------------"
        # binding.pry
        return_to_main_menu
    end

    def selection_seven
        puts "Thank you for using FitMePlan today. Hope to see you again soon!"
    end

    def user_method_selection
        # user = user_instance.name
        # selection = 1
        if @user_selection == "1"
            selection_one
        elsif @user_selection == "2"
            selection_two
        elsif @user_selection == "3"
            selection_three
        elsif @user_selection == "4"
            selection_four
        elsif @user_selection == "5"
            selection_five
        elsif @user_selection == "6"
            selection_six
        elsif @user_selection == "7"
            selection_seven
        else
            puts "Sorry. That doesn't seem to be a valid selection."
            return_to_main_menu
        end
        # binding.pry
    end

    def play_workout_music
        pid = fork{exec 'afplay', "lib/"}
    end

end