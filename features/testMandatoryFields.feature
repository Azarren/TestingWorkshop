Feature: test errors on mandatory fields

Scenario: Displays error when the user does not select a mandatory field
  Given I navigate to the homepage
    And I should see the homepage
    When I click on the 'Start now' button
    And I select the option yes for working irregular hours
    And I leave the date for year leave started blank 
    And I click the continue button 
    Then I will see an error message "There are only 7 days in a week. Please check and enter a correct value."
    And input fields should be highlighted in red