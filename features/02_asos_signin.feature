Feature: ASOS Sign In

  @signin_test_1
  Scenario: Signing into account
    Given I access the ASOS Sign In page
      And I input valid details for the Sign In form
    When I click Sign In
    Then I should see my first name appear when I click the account icon after sigining in
