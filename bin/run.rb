require_relative '../config/environment'

application_instance = Application.new
application_instance.welcome

cyclist_or_nil = application_instance.login_or_register

until cyclist_or_nil
    cyclist_or_nil = application_instance.login_or_register
end


application_instance.cyclist = cyclist_or_nil
application_instance.main_menu

