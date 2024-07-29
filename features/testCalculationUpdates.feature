Feature: test that the calculation updates

Scenario: Updates calculation when value is edited
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
    
    Given I have answered all questions 
    And I see the summary page
    When I click on the 'Change' button next to hours worked per week
    And I input 20 hours worked per week
    And I input 4 days worked per week
    Then I should see the correct submitted answers
    And I should see the updated total entitlement hours