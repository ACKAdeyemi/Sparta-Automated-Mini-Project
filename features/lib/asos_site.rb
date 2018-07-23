require 'capybara/dsl'
require_relative './pages/asos_account.rb'
require_relative './pages/asos_homepage.rb'
require_relative './pages/asos_registration.rb'
require_relative './pages/asos_signin.rb'
require_relative './helpers/temp_email.rb'
require_relative './helpers/tab_control.rb'

class ASOS_Site

  def get_temp_email
    TempEmail.new
  end

  def asos_homepage
    ASOS_Homepage.new
  end

  def asos_account
    ASOS_Account.new
  end

  def asos_registration
    ASOS_Registration.new
  end

  def asos_signin
    ASOS_SignIn.new
  end

  def login_fail_methods
  LoginFailMethod.new
end

  def tab_control
    TabControl.new
  end

  def registration_fail_methods
    RegistrationFailMethod.new
  end

end
