require 'capybara/dsl'

class ASOS_Homepage
  include Capybara::DSL

  # constants
  HOMEPAGE_URL = 'http://www.asos.com'

  def visit_home_page
    visit(HOMEPAGE_URL)
    sleep 2
  end

end
