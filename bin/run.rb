require_relative '../config/environment'


@cli = CLI.new
# CLI.animation
# CLI.go
# @cli.flash
@cli.fit_me_plan_image
@cli.welcome

#if user input is Gym, the gym methods will run, if not, user methods will run.
def gym_methods
    @cli.gym_welcome
    @cli.gym_input
    @cli.gym_instance
    if @cli.gym_instance == nil
        @cli.non_valid_gym_instance_check
    else
        @cli.gym_options_greeting
        @cli.gym_options_prompt
        @cli.gym_option_input
        @cli.gym_method_selection
    end
end



    
def valid_user_menu
    @cli.options_greeting
    @cli.options_prompt
    @cli.option_input
    @cli.user_method_selection
end

def new_user_set_up
    if @cli.user_instance == nil
        @cli.user_instance_check #--
        @cli.new_user_input #-- 
        @cli.new_user #--
        valid_user_menu
    else 
        valid_user_menu
    end
end

def if_else
    if @cli.user_input == "Gym"
        gym_methods
    else 
        @cli.user_instance 
        new_user_set_up
    end
end

if_else












