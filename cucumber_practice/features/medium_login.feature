Feature: Medium Login

  Scenario: Inputting incorrect username credentials shows an error
    Given I access the medium login page
    And I click on the sign-in link
    When I choose sign-in with email
    Then I enter my email
    And I click on continue button
    And page confirmation page shows
