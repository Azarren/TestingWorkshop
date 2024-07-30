Feature: annualised hours results in weeks 

Scenario: Gives a unique message when selecting option annualised hours
Given I navigate to the homepage
    When I click on the 'Start now' button
    And I select the option no for working irregular hours
    And I select the option annualised hours
    And I select the option for a "work out" full leave year
    Then I recieve results in weeks
