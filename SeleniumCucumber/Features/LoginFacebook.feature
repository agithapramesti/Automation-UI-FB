@LoginFeature
Feature: Create Data for Typicode

  #-------------------------- Positive Testcase --------------------------
  Scenario: As User I want to login to Facebook successfully
    Given open login page and see input form for email and password
    When put email address "" on email input form
    And put password "" on password input form
    Then click button login
    And successfully login to facebook

