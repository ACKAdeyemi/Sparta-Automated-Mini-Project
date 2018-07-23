Given("I access the ASOS Sign In page") do
  @asos_site.asos_homepage.visit_home_page
  @asos_site.asos_account.click_account_icon
  @asos_site.asos_account.click_sign_out_link
  @asos_site.asos_homepage.visit_home_page
  @asos_site.asos_account.click_account_icon
  @asos_site.asos_account.click_sign_in_link
end

Given("I input valid details for the Sign In form") do
  @asos_site.asos_signin.enter_email($email)
  @asos_site.asos_registration.enter_password("hello1")
end

Given(/^I input incorrect details for the Sign In form (.*) (.*)$/) do |email,password|
  @asos_site.asos_signin.enter_email(email)
  @asos_site.asos_registration.enter_password(password)
end

When("I click Sign In") do
  @asos_site.asos_signin.submit_signin
  @asos_site.tab_control.wait(2)
end

Then("I should see my first name appear when I click the account icon after sigining in") do
  @asos_site.asos_account.click_account_icon
  expect(@asos_site.asos_account.confirm_user_first_name).to include("#{$first_name}")
  @asos_site.tab_control.wait(2)
end

Then(/^I receive the following username or email error: (.*)$/) do |email_error|
  expect(@asos_site.login_fail_methods.username_email_error_div).to eq true
  expect(@asos_site.login_fail_methods.username_email_error_message).to eq "#{email_error}"
end

Then(/^I receive the following password error: (.*)$/) do |password_error|
  expect(@asos_site.login_fail_methods.password_error_div).to eq true
  expect(@asos_site.login_fail_methods.password_error_message).to eq "#{password_error}"
end
