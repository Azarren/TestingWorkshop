Feature: test summary page results

Scenario: Displays the values that were inputted by the user on the summary page
  Given I navigate to the homepage
    And I should see the homepage
    When I click on the 'Start now' button
    And I select the option no for working irregular hours
    And I select the option hours worked per week
    And I select the option for a full leave year
    And I input 37.5 hours worked per week
    And I input 5 days worked per week
    Then I should see the correct submitted answers
    And I should see the total entitlement hours

    Given I have finished the quiz
    When I see the summary page 
    Then I should see all the submitted answers
    And I can chnage them if I need