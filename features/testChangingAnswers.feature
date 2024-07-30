Feature: test that answers are changeable throughout the quiz

Scenario: Can change answers from the "When does the leave year start?" page
    Given I navigate to the homepage
    When I click on the 'Start now' button
    And I select the option yes for working irregular hours
    And I click on the change link for {string}
    Then I am navigated to the {string} page

Scenario: Can change answers from the "Is the holiday entitlement based on:" page
    Given I navigate to the homepage
    When I click on the 'Start now' button
    And I select the option yes for working irregular hours
    And I input 1 of 10 1998 
    And I click on the change link for {string}
    Then I am navigated to the {string} page

    Scenario: Quiz can restart from the "Do you want to work out holiday:" page
    Given I navigate to the homepage
    When I click on the 'Start now' button
    And I select the option yes for working irregular hours
    And I input 1 of 10 1998 
    And I input days worked per week
    And I click on the change link for {string}
    Then I am navigated to the {string} page