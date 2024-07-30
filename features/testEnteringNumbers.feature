Feature: Error message when entering non-numbers

Scenario: Error message recieved when entering non-numbers for hours worked per week
  Given I navigate to the homepage
    When I click on the 'Start now' button
    And I select the option no for working irregular hours
    And I select the option hours worked per week
    And I select the option for a "work out" full leave year
    And I input a hours worked per week
    Then I will see an error message

Scenario: Error message recieved when entering non-numbers for hours worked per week
      Given I navigate to the homepage
    When I click on the 'Start now' button
    And I select the option no for working irregular hours
    And I select the option hours worked per week
    And I select the option for a "work out" full leave year
    And I input 37.5 hours worked per week
    And I input a days worked per week
    Then I will see an error message