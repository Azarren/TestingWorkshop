Feature: Error message when employment end date earlier than employment start date 

Scenario: Error message recieved when input employment end date earlier than employment start date 
    Given I navigate to the homepage
    When I click on the 'Start now' button
    And I select the option no for working irregular hours
    And I select the option days worked per week
    And I select the option for someone starting part way through a leave year
    And I input an employment start date
    And I input an employment end date earlier than my employment end date 
    Then I will see an error message 