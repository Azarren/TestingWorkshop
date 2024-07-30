Feature: shift results in shifts

Scenario: Gives a unique message when selecting option shifts
Given I navigate to the homepage
    When I click on the 'Start now' button
    And I select the option no for working irregular hours
    And I select the option shifts
    And I select the option for a "calculate the" full leave year
    And I input 5
    And I input 5
    And I input 5
    Then I recieve results in shifts