@LoginFeature
Feature: Login Facebook

  #-------------------------- Positive Testcase --------------------------
  Scenario: As User I want to login to Facebook successfully (camel case email)
    Given open login page and see input form for email and password
    When put "email" address "Test@gmail.com" on email input form
    And put password "Test1234" on password input form
    Then click button login
    And successfully login to facebook

  Scenario: As User I want to login to Facebook successfully (upper case email)
    Given open login page and see input form for email and password
    When put "email" address "TEST@GMAIL.COM" on email input form
    And put password "Test1234" on password input form
    Then click button login
    And successfully login to facebook

  Scenario: As User I want to login to Facebook successfully (lower case email)
    Given open login page and see input form for email and password
    When put "email" address "test@gmail.com" on email input form
    And put password "Test1234" on password input form
    Then click button login
    And successfully login to facebook

  Scenario: As User I want to login to Facebook successfully (using valid phone number)
    Given open login page and see input form for email and password
    When put "phone" address "0838123456" on email input form
    And put password "Test1234" on password input form
    Then click button login
    And successfully login to facebook

  #-------------------------- Negative Testcase --------------------------
  Scenario Outline: As User I fail login to Facebook using invalid email (invalid char, random, invalid email format, contains space)
    Given open login page and see input form for email and password
    When put "email" address "<email>" on email input form
    And put password "Test1234" on password input form
    Then click button login
    And fail login to facebook
    Examples:
    | email           |
    | tes⁄t@gmail.com |
    | xxx@gmail.com   |
    | gmail@testcom   |
    | te st@gmail.com |

  Scenario: As User I fail login to Facebook when put empty email address
    Given open login page and see input form for email and password
    When put "email" address "" on email input form
    And put password "Test1234" on password input form
    Then click button login
    And fail login to facebook

  Scenario: As User I fail login to Facebook when put only space email address
    Given open login page and see input form for email and password
    When put "email" address " " on email input form
    And put password "Test1234" on password input form
    Then click button login
    And fail login to facebook

  Scenario Outline: As User I fail login to Facebook using invalid phone number (random,alfanumerik,contains space,invalid format,long digit)
    Given open login page and see input form for email and password
    When put "email" address "<phoneNumber>" on email input form
    And put password "Test1234" on password input form
    Then click button login
    And fail login to facebook
    Examples:
    | phoneNumber  |
    | 08111111111  |
    | 0838123AB56  |
    | 0838123 456  |
    | 999999999999 |
    | 083812345611111111111111111111111111111111111111111111111111111111111111111111 |

  Scenario: As User I fail login to Facebook when put empty phone number
    Given open login page and see input form for email and password
    When put "email" address "" on email input form
    And put password "Test1234" on password input form
    Then click button login
    And fail login to facebook

  Scenario: As User I fail login to Facebook when put only space phone number
    Given open login page and see input form for email and password
    When put "email" address " " on email input form
    And put password "Test1234" on password input form
    Then click button login
    And fail login to facebook

  Scenario Outline: As User I fail login to Facebook using invalid password (random, contains space, uppercase, lowercase)
    Given open login page and see input form for email and password
    When put "email" address "Test@gmail.com" on email input form
    And put password "<password>" on password input form
    Then click button login
    And fail login to facebook
    Examples:
    | password       |
    | randomPassword |
    | Test 1234      |
    | test1234       |
    | TEST1234       |

  Scenario: As User I fail login to Facebook when put empty password
    Given open login page and see input form for email and password
    When put "email" address "Test@gmail.com" on email input form
    And put password "" on password input form
    Then click button login
    And fail login to facebook

  Scenario: As User I fail login to Facebook when put only space for password
    Given open login page and see input form for email and password
    When put "email" address "Test@gmail.com" on email input form
    And put password " " on password input form
    Then click button login
    And fail login to facebook

  Scenario: As User I fail login to Facebook using inactive account
    Given open login page and see input form for email and password
    When put "email" address "inactiveAccount@gmail.com" on email input form
    And put password "inactiveAccount" on password input form
    Then click button login
    And fail login to facebook

  Scenario: As User I fail login to Facebook using invalid password for many times (the account will be locked)
    Given open login page and see input form for email and password
    When put "email" address "Test@gmail.com" on email input form
    And put password "invalidPassword" on password input form
    Then click button login
    And fail login to facebook
    When put "email" address "Test@gmail.com" on email input form
    And put password "invalidPassword" on password input form
    Then click button login
    And fail login to facebook
    When put "email" address "Test@gmail.com" on email input form
    And put password "invalidPassword" on password input form
    Then click button login
    And fail login to facebook
    When put "email" address "Test@gmail.com" on email input form
    And put password "invalidPassword" on password input form
    Then click button login
    And fail login to facebook
    When put "email" address "Test@gmail.com" on email input form
    And put password "invalidPassword" on password input form
    Then click button login
    And fail login to facebook
    When put "email" address "Test@gmail.com" on email input form
    And put password "invalidPassword" on password input form
    Then click button login
    And fail login to facebook
    When put "email" address "Test@gmail.com" on email input form
    And put password "invalidPassword" on password input form
    Then click button login
    And fail login to facebook
    When put "email" address "Test@gmail.com" on email input form
    And put password "invalidPassword" on password input form
    Then click button login
    And fail login to facebook
    When put "email" address "Test@gmail.com" on email input form
    And put password "invalidPassword" on password input form
    Then click button login
    And fail login to facebook
    And user can see locked account warning on facebook login page




