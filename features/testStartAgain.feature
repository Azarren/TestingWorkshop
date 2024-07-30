Feature: Starting the quiz again from any page

Scenario: Quiz can restart from the "Is the holiday entitlement based on:" page
    Given I navigate to the homepage
    When I click on the 'Start now' button
    And I select the option no for working irregular hours
    And I click the "Start again" link
    Then I restart the quiz

Scenario: Quiz can restart from the "Do you want to work out holiday:" page
    Given I navigate to the homepage
    When I click on the 'Start now' button
    And I select the option no for working irregular hours
    And I select the option hours worked per week
    And I click the "Start again" link
    Then I restart the quiz

Scenario: Quiz can restart from the "Number of days worked per week?" page
    Given I navigate to the homepage
    When I click on the 'Start now' button
    And I select the option no for working irregular hours
    And I select the option hours worked per week
    And I select the option for a "work out" full leave year
    And I input 37.5 hours worked per week
    And I input 5 days worked per week
    And I click the "Start again" link
    Then I restart the quiz

Scenario: Quiz can restart from the "Number of hours worked per week?" page
    Given I navigate to the homepage
    When I click on the 'Start now' button
    And I select the option no for working irregular hours
    And I select the option hours worked per week
    And I select the option for a "work out" full leave year
    And I input 37.5 hours worked per week
    And I click the "Start again" link
    Then I restart the quiz

Scenario: Quiz can restart from the "Information based on your answers" page
    Given I navigate to the homepage
    When I click on the 'Start now' button
    And I select the option no for working irregular hours
    And I select the option hours worked per week
    And I select the option for a "work out" full leave year
    And I input 37.5 hours worked per week
    And I input 5 days worked per week
    And I should see the answers "No" "hours worked per week" "for a full leave year" 37.5 5
    Then I click the "Start again" link
    And I restart the quiz

Scenario: Quiz can restart from the "What was the employment start date?" page
    Given I navigate to the homepage
    When I click on the 'Start now' button
    And I select the option no for working irregular hours
    And I select the option days worked per week
    And I select the option for someone starting part way through a leave year
    And I click the "Start again" link
    Then I restart the quiz

Scenario: Quiz can restart from the "When does the leave year start?" page
    Given I navigate to the homepage
    When I click on the 'Start now' button
    And I select the option no for working irregular hours
    And I select the option days worked per week
    And I select the option for someone starting part way through a leave year
    And I input 1 of 10 1998
    And I click the "Start again" link
    Then I restart the quiz

Scenario: Quiz can restart from the "What was the employment end date?" page
    Given I navigate to the homepage
    When I click on the 'Start now' button
    And I select the option no for working irregular hours
    And I select the option annualised hours
    And I select the option for someone leaving part way through a leave year
    And I click the "Start again" link
    Then I restart the quiz

Scenario: Quiz can restart from the "How many hours in each shift?" page
    Given I navigate to the homepage
    When I click on the 'Start now' button
    And I select the option no for working irregular hours
    And I select the option shifts
    And I select the option for a "calculate the" full leave year
    And I click the "Start again" link
    Then I restart the quiz

Scenario: Quiz can restart from the "How many hours in each shift?" page
    Given I navigate to the homepage
    When I click on the 'Start now' button
    And I select the option no for working irregular hours
    And I select the option shifts
    And I select the option for a "calculate the" full leave year
    And I input 5
    And I click the "Start again" link
    Then I restart the quiz

Scenario: Quiz can restart from the "How many shifts will be worked per shift pattern?" page
    Given I navigate to the homepage
    When I click on the 'Start now' button
    And I select the option no for working irregular hours
    And I select the option shifts
    And I select the option for a "calculate the" full leave year
    And I input 5
    And I input 5
    And I click the "Start again" link
    Then I restart the quiz

Scenario: Quiz can restart from the "How many days in the shift pattern?" page
    Given I navigate to the homepage
    When I click on the 'Start now' button
    And I select the option no for working irregular hours
    And I select the option shifts
    And I select the option for a "calculate the" full leave year
    And I input 5
    And I input 5
    And I input 5
    And I click the "Start again" link
    Then I restart the quiz
