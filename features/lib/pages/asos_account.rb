require 'capybara/dsl'

class ASOS_Account
  include Capybara::DSL

  # constants
  ACCOUNT_OPTIONS_CLASS_LINK = '._1k1reGo'

  def confirm_user_first_name
    p find(USER_FIRSTNAME_TEXT).text
  end

  def click_account_icon
    find(ACCOUNT_ICON).click
    sleep 1
  end

  def click_join_link
    all(ACCOUNT_OPTIONS_CLASS_LINK).each do |x|
      if x.text == 'Join'
        x.click
      end
    end
    sleep 1
  end

  def click_sign_in_link
    all(ACCOUNT_OPTIONS_CLASS_LINK).each do |x|
      if x.text == 'Sign In'
        x.click
      end
    end
    sleep 1
  end

  def click_sign_out_link
    all(ACCOUNT_OPTIONS_CLASS_LINK).each do |x|
      if x.text == 'Sign Out'
        x.click
      end
    end
    sleep 1
  end

end
