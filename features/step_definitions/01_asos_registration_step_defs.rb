Given("I access the ASOS Register page") do
  @asos_site.get_temp_email.visit_minute_inbox
  @asos_site.tab_control.open_tab
  @asos_site.tab_control.switch_to_tab(1)
  @asos_site.asos_homepage.visit_home_page
  @asos_site.asos_account.click_account_icon
  @asos_site.asos_account.click_join_link
end

Given("I input valid details for the join form") do
  @asos_site.tab_control.switch_to_tab(0)
  $email = @asos_site.get_temp_email.get_email
  @asos_site.tab_control.switch_to_tab(1)
  @asos_site.asos_registration.enter_email($email)
  $first_name = Faker::Name.first_name
  $last_name = Faker::Name.last_name
  @asos_site.asos_registration.enter_name($first_name,$last_name)
  @asos_site.asos_registration.enter_password("hello1")
  @asos_site.asos_registration.enter_date_of_birth("3","March","1990")
  @asos_site.asos_registration.choose_gender("Guy")
  @asos_site.asos_registration.toggle_contact_preferences # select all
  @asos_site.asos_registration.toggle_contact_preferences # clear all
  @asos_site.asos_registration.choose_contact_options("New stuff","","","ASOS partners")
end

When("I click Join ASOS") do
  @asos_site.asos_registration.submit_registration
  @asos_site.tab_control.wait(2)
end

Then("I should see my first name appear when I click the account icon after successful registration") do
  @asos_site.asos_account.click_account_icon
  expect(@asos_site.asos_account.confirm_user_first_name).to include("#{$first_name}")
  @asos_site.tab_control.wait(2)
end
