Feature: ASOS Registration

  @reg_test_1
  Scenario: Inputting correct registration details to complete sign up process
    Given I access the ASOS Register page
      And I input valid details for the join form
    When I click Join ASOS
    Then I should see my first name appear when I click the account icon after successful registration

  @reg_fail_test_1
  Scenario Outline: Inputting incorrect registration details to produce errors
    Given I access the ASOS Register page
      And I input valid details for the join form
    When I click Join ASOS
    Then I should see my first name appear when I click the account icon after successful registration

    Examples:
    | | | |
