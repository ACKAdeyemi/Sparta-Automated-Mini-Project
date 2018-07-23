require 'capybara/dsl'

class ASOS_Homepage
  include Capybara::DSL

  # constants
  HOMEPAGE_URL = 'http://www.asos.com'
  ACCOUNT_ICON = '._3TGKcxB'
  JOIN_LINK = '._1k1reGo'
  USER_FIRSTNAME_TEXT = '._2T5vKuV'

  def visit_home_page
    visit(HOMEPAGE_URL)
    sleep 2
  end

end
