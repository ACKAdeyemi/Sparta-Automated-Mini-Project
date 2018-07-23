require 'capybara/dsl'
require 'faker'

class ASOS_Registration
  include Capybara::DSL

  # constants
  EMAIL = 'Email'
  FIRST_NAME = 'FirstName'
  LAST_NAME = 'LastName'
  PASSWORD = 'Password'
  BIRTHDAY_DAY = 'BirthDay'
  BIRTHDAY_MONTH = 'BirthMonth'
  BIRTHDAY_YEAR = 'BirthYear'
  GENDER = '.tickbox-container'
  CONTACT_OPTIONS = '.qa-marketing-label' # 4 Options
  TOGGLE_CONTACT_PREFERENCES = '.all-check'
  SUBMIT_REGISTRATION = '#register'

  def enter_email(email)
    fill_in EMAIL, with: "#{email}"
    sleep 1
  end

  def enter_name(first_name,last_name)
    fill_in FIRST_NAME, with: "#{first_name}"
    sleep 1
    fill_in LAST_NAME, with: "#{last_name}"
    sleep 1
  end

  def enter_password(password)
    fill_in PASSWORD, with: "#{password}"
    sleep 1
  end

  def enter_date_of_birth(dd,mm,yyyy)
    select "#{dd}", from: BIRTHDAY_DAY
    select "#{mm}", from: BIRTHDAY_MONTH
    select "#{yyyy}", from: BIRTHDAY_YEAR
    # fill_in BIRTHDAY_DAY, with: "#{dd}"
    # fill_in BIRTHDAY_MONTH, with: "#{mm}"
    # fill_in BIRTHDAY_YEAR, with: "#{yyyy}"
    sleep 1
  end

  def choose_gender(gender)
    all(GENDER).each do |x|
      if x.text == gender
        x.click
      end
    end
    sleep 1
  end

  # On first click, selects all
  # On second click, clears all
  def toggle_contact_preferences
    find(TOGGLE_CONTACT_PREFERENCES).click
    sleep 2
  end

  def choose_contact_options(contact_opt_one,contact_opt_two,contact_opt_three,contact_opt_four)
    all(CONTACT_OPTIONS).each do |x|
      case x.text
      when contact_opt_one
        x.click
      when contact_opt_two
        x.click
      when contact_opt_three
        x.click
      when contact_opt_four
        x.click
      end
    end
    sleep 1
  end

  def submit_registration
    find(SUBMIT_REGISTRATION).click
    sleep 3
  end

end
