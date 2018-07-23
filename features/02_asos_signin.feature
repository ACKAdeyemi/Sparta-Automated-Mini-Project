Feature: ASOS Sign In

  @signin_test_1
  Scenario: Signing into account
    Given I access the ASOS Sign In page
      And I input valid details for the Sign In form
    When I click Sign In
    Then I should see my first name appear when I click the account icon after sigining in

  @signin_fail_test_1
  Scenario Outline: Inputting incorrect login/signin details to produce errors
    Given I access the ASOS Sign In page
      And I input incorrect details for the Sign In form <email> <password>
    When I click Sign In
    Then I receive the following username or email error: <email_error>
      And I receive the following password error: <password_error>

    Examples:
    | email | password | email_error | password_error |
    |  |  | Oops! You need to type your email here | Hey, we need a password here |
