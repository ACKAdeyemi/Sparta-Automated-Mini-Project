require 'capybara/dsl'

class LoginFailMethod
  include Capybara::DSL

  # constants
  EMAIL_MESSAGE_DIV = '#EmailAddress-error'
  PASSWORD_MESSAGE_DIV = '#Password-error'

  # 1 - USERNAME/EMAIL ERROR
  def username_email_error_div
    page.has_selector?(EMAIL_MESSAGE_DIV)
  end

  def username_email_error_message
    find(EMAIL_MESSAGE_DIV).text
  end

  # 2 - PASSWORRD ERROR
  def password_error_div
    page.has_selector?(PASSWORD_MESSAGE_DIV)
  end

  def password_error_message
    find(PASSWORD_MESSAGE_DIV).text
  end

end
