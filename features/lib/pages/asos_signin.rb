require 'capybara/dsl'

class ASOS_SignIn
  include Capybara::DSL

  # constants
  EMAIL = 'Username'
  PASSWORD = 'Password'
  SIGN_IN_BUTTON = '#signin'

  def enter_email(email)
    fill_in EMAIL, with: "#{email}"
    sleep 1
  end

  def enter_password(password)
    fill_in PASSWORD, with: "#{password}"
    sleep 1
  end

  def submit_signin
    find(SIGN_IN_BUTTON).click
    sleep 2
  end

end
