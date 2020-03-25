require_relative '../config/environment'


@cli = CLI.new
@cli.flash
@cli.fit_me_plan_image
@cli.welcome
@cli.user_input
@cli.user_instance 

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
        ###need to fix option no so message will appear.
    else 
        valid_user_menu
    end
end
new_user_set_up












