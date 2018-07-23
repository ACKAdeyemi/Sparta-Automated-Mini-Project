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

When("I click Sign In") do
  @asos_site.asos_signin.submit_signin
  @asos_site.tab_control.wait(2)
end

Then("I should see my first name appear when I click the account icon after sigining in") do
  @asos_site.asos_account.click_account_icon
  expect(@asos_site.asos_account.confirm_user_first_name).to include("#{$first_name}")
  @asos_site.tab_control.wait(2)
end
#
