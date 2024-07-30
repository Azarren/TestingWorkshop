Feature: Compressed hours unique message

Scenario: Gives a unique message when selecting option compressed hours
Given I navigate to the homepage
    When I click on the 'Start now' button
    And I select the option no for working irregular hours
    And I select the option compressed hours
    And I select the option for a "work out" full leave year
    And I input 37.5
    And I input 5
    Then I recieve a unique message 
