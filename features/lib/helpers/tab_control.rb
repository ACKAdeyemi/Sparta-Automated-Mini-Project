require 'capybara/dsl'

class TabControl
  include Capybara::DSL

  def switch_to_tab(tab_num)
    page.switch_to_window(page.windows[tab_num])
    sleep 1
  end

  def refresh_tab
    page.driver.browser.navigate.refresh
  end

  def open_tab
    page.driver.open_new_window
    sleep 1
  end

  def close_tab
    page.driver.browser.close
  end

  def wait(num)
    sleep num
  end

end
