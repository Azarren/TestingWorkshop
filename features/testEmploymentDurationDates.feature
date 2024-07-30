Feature: Error message when employment dates are wrong

Scenario: Error message recieved when input employment end date earlier than employment start date 
    Given I navigate to the homepage
    When I click on the 'Start now' button
    And I select the option no for working irregular hours
    And I select the option days worked per week
    And I select the option for someone starting part way through a leave year
    And I input 1 of 10 2020 
    And I input 1 of 10 1998  
    Then I will see an error message

Scenario: Error message when an impossible date is used
    Given I navigate to the homepage
    When I click on the 'Start now' button
    And I select the option no for working irregular hours
    And I select the option days worked per week
    And I select the option for someone starting part way through a leave year
    And I input 31 of 2 2020
    Then I will see an error message