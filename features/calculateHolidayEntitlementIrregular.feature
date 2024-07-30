Feature: Calculate irregular hours holiday entitlement

Scenario: Calculate the correct holiday entitlement for an employee who works irregular hours
    Given I navigate to the homepage
    And I should see the homepage
    When I click on the 'Start now' button
    And I select the option yes for working irregular hours
    And I input 1 of 10 1998
    And I select the option hours worked per week
    And I select the option for a full leave year
    And I input 37.5 hours worked per week
    And I input 5 days worked per week
    Then I should see the correct submitted answers
    And I should see the total entitlement hours