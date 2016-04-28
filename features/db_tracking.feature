Feature: real time tracking for delivery boys
  as a opearational manager, I should be able to track delivery boys.

  Scenario: opearational manager able to see 
    Given user wants to get list of all countries
    When he requests get all api
    Then response should contains list of countries
