Feature: Calculate holiday entitlement

Scenario: Homepage is visible
    Given I navigate to the homepage
    And I should see the homepage

Scenario: Calculate the correct holiday entitlement for an employee who works regular hours
    Given I navigate to the homepage
    And I should see the homepage
    When I click on the 'Start now' button
    And I select the option no for working irregular hours
    And I select the option hours worked per week
    And I select the option for a "work out" full leave year
    And I input 37.5 hours worked per week
    And I input 5 days worked per week
    Then I should see the answers "No" "hours worked per week" "for a full leave year" 37.5 5
    And I should see the total entitlement hours
