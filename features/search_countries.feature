Feature: search countries
  as a user, I should be able to search countries.
  This is required by the law, and is also essential in order to
  keep customers happy.

  Scenario: user get list of all countries
    Given user wants to get list of all countries
    When he requests get all api
    Then response should contains list of countries
