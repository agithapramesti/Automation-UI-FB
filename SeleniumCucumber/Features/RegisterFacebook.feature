@RegisterFeature
Feature: Registration Facebook

  #-------------------------- Positive Testcase --------------------------
  Scenario Outline: As User I register to Facebook with valid data
    Given open facebook and click create account button
    When put first name "<firstName>" on first name input form
    And put surname "<surname>" on surname input form
    And put number or email "<email>" on number or email input form
    And put password "Test1234_" on new password input form
    And select date "1" on date of birth
    And select month "Jan" on month of birth
    And select year "<year>" on year of birth
    And select gender "<gender>" on gender option
    Then click sign up button
    And success fully register account
    Examples:
    | firstName | surname | email           | gender | year |
    | John Loui | Doe     | Test@gmail.com  | Male   | 2011 |
    | Marry     | Jane    | Test1@gmail.com | Female | 1945 |

  Scenario Outline: As User I register to Facebook with gender is custom and gender is filled
    Given open facebook and click create account button
    When put first name "Janson" on first name input form
    And put surname "Loe" on surname input form
    And put number or email "Test2@gmail.com" on number or email input form
    And put password "Test1234" on new password input form
    And select date "31" on date of birth
    And select month "Jul" on month of birth
    And select year "2000" on year of birth
    And select gender "Custom" on gender option
    And select pronoun "They: Wish them a happy birthday!"
    And put gender as "<genderCustom>" on gender input form
    Then click sign up button
    And success fully register account
    Examples:
    | genderCustom |
    | transgender  |
    | random123?   |
    | only space   |

  Scenario: As User I register to Facebook with gender is custom and gender not filled
    Given open facebook and click create account button
    When put first name "Janson" on first name input form
    And put surname "Loe" on surname input form
    And put number or email "Test2@gmail.com" on number or email input form
    And put password "Test1234_" on new password input form
    And select date "31" on date of birth
    And select month "Jul" on month of birth
    And select year "2000" on year of birth
    And select gender "Custom" on gender option
    And select pronoun "They: Wish them a happy birthday!"
    And put gender as "" on gender input form
    Then click sign up button
    And success fully register account

  #-------------------------- Negative Testcase --------------------------
  Scenario: As User I fail register to Facebook with first name is blank/empty
    Given open facebook and click create account button
    When put first name "" on first name input form
    And put surname "Loe" on surname input form
    And put number or email "Test3@gmail.com" on number or email input form
    And put password "Test1234_" on new password input form
    And select date "31" on date of birth
    And select month "Jul" on month of birth
    And select year "2000" on year of birth
    And select gender "Male" on gender option
    Then click sign up button
    And fail to register facebook account

  Scenario: As User I fail register to Facebook with surname is blank/empty
    Given open facebook and click create account button
    When put first name "Janson" on first name input form
    And put surname "" on surname input form
    And put number or email "Test3@gmail.com" on number or email input form
    And put password "Test1234_" on new password input form
    And select date "31" on date of birth
    And select month "Jul" on month of birth
    And select year "2000" on year of birth
    And select gender "Male" on gender option
    Then click sign up button
    And fail to register facebook account

  Scenario: As User I fail register to Facebook with mobile phone or email is blank/empty
    Given open facebook and click create account button
    When put first name "Janson" on first name input form
    And put surname "Loe" on surname input form
    And put number or email "" on number or email input form
    And put password "Test1234_" on new password input form
    And select date "31" on date of birth
    And select month "Jul" on month of birth
    And select year "2000" on year of birth
    And select gender "Male" on gender option
    Then click sign up button
    And fail to register facebook account

  Scenario: As User I fail register to Facebook with password is blank/empty
    Given open facebook and click create account button
    When put first name "Janson" on first name input form
    And put surname "Loe" on surname input form
    And put number or email "Test3@gmail.com" on number or email input form
    And put password "" on new password input form
    And select date "31" on date of birth
    And select month "Jul" on month of birth
    And select year "2000" on year of birth
    And select gender "Male" on gender option
    Then click sign up button
    And fail to register facebook account

  Scenario: As User I fail register to Facebook without choose gender
    Given open facebook and click create account button
    When put first name "" on first name input form
    And put surname "Loe" on surname input form
    And put number or email "Test3@gmail.com" on number or email input form
    And put password "Test1234_" on new password input form
    And select date "31" on date of birth
    And select month "Jul" on month of birth
    And select year "2000" on year of birth
    And select gender "" on gender option
    Then click sign up button
    And fail to register facebook account

  Scenario: As User I fail register to Facebook when put first name with only space
    Given open facebook and click create account button
    When put first name " " on first name input form
    And put surname "Loe" on surname input form
    And put number or email "Test3@gmail.com" on number or email input form
    And put password "Test1234_" on new password input form
    And select date "31" on date of birth
    And select month "Jul" on month of birth
    And select year "2000" on year of birth
    And select gender "Male" on gender option
    Then click sign up button
    And fail to register facebook account

  Scenario Outline: As User I fail register to Facebook when put first name under min required
    Given open facebook and click create account button
    When put first name "<firstName>" on first name input form
    And put surname "Loe" on surname input form
    And put number or email "Test3@gmail.com" on number or email input form
    And put password "Test1234_" on new password input form
    And select date "31" on date of birth
    And select month "Jul" on month of birth
    And select year "2000" on year of birth
    And select gender "Male" on gender option
    Then click sign up button
    And fail to register facebook account
    Examples:
    | firstName |
    | x         |
    | aaa       |

  Scenario Outline: As User I fail register to Facebook when put first name contains characters, alfanumerik
    Given open facebook and click create account button
    When put first name "<firstName>" on first name input form
    And put surname "Loe" on surname input form
    And put number or email "Test3@gmail.com" on number or email input form
    And put password "Test1234_" on new password input form
    And select date "31" on date of birth
    And select month "Jul" on month of birth
    And select year "2000" on year of birth
    And select gender "Male" on gender option
    Then click sign up button
    And fail to register facebook account
    Examples:
    | firstName |
    | Jonson123 |
    | Jonson_   |

  Scenario: As User I fail register to Facebook when put surname with only space
    Given open facebook and click create account button
    When put first name "Jonson" on first name input form
    And put surname " " on surname input form
    And put number or email "Test3@gmail.com" on number or email input form
    And put password "Test1234_" on new password input form
    And select date "31" on date of birth
    And select month "Jul" on month of birth
    And select year "2000" on year of birth
    And select gender "Male" on gender option
    Then click sign up button
    And fail to register facebook account

  Scenario Outline: As User I fail register to Facebook when put surname under min required
    Given open facebook and click create account button
    When put first name "Jonson" on first name input form
    And put surname "<surname>" on surname input form
    And put number or email "Test3@gmail.com" on number or email input form
    And put password "Test1234_" on new password input form
    And select date "31" on date of birth
    And select month "Jul" on month of birth
    And select year "2000" on year of birth
    And select gender "Male" on gender option
    Then click sign up button
    And fail to register facebook account
    Examples:
    | surname |
    | x       |
    | aaa     |

  Scenario Outline: As User I fail register to Facebook when put surname contains characters, alfanumerik
    Given open facebook and click create account button
    When put first name "Jonson" on first name input form
    And put surname "<surname>" on surname input form
    And put number or email "Test3@gmail.com" on number or email input form
    And put password "Test1234_" on new password input form
    And select date "31" on date of birth
    And select month "Jul" on month of birth
    And select year "2000" on year of birth
    And select gender "Male" on gender option
    Then click sign up button
    And fail to register facebook account
    Examples:
    | surname |
    | Loe1234 |
    | Loe@    |

  Scenario Outline: As User I fail register to Facebook when put invalid email on mobile phone or email input form (invalid char, contain space, random, invalid email format)
    Given open facebook and click create account button
    When put first name "Jonson" on first name input form
    And put surname "Loe" on surname input form
    And put number or email "<email>" on number or email input form
    And put password "Test1234_" on new password input form
    And select date "31" on date of birth
    And select month "Jul" on month of birth
    And select year "2000" on year of birth
    And select gender "Male" on gender option
    Then click sign up button
    And fail to register facebook account
    Examples:
    | email |
    | tes⁄t@gmail.com |
    | test @gmail.com |
    | notFoundEmail@gmail.com |
    | gmail@testcom           |

  Scenario: As User I fail register to Facebook when put exist email on mobile phone or email input form
    Given open facebook and click create account button
    When put first name "Jonson" on first name input form
    And put surname "Loe" on surname input form
    And put number or email "existUser@gmail.com" on number or email input form
    And put password "Test1234_" on new password input form
    And select date "31" on date of birth
    And select month "Jul" on month of birth
    And select year "2000" on year of birth
    And select gender "Male" on gender option
    Then click sign up button
    And fail to register facebook account

  Scenario: As User I fail register to Facebook when put inactive email on mobile phone or email input form (email from locked user)
    Given open facebook and click create account button
    When put first name "Jonson" on first name input form
    And put surname "Loe" on surname input form
    And put number or email "incativeEmail@gmail.com" on number or email input form
    And put password "Test1234_" on new password input form
    And select date "31" on date of birth
    And select month "Jul" on month of birth
    And select year "2000" on year of birth
    And select gender "Male" on gender option
    Then click sign up button
    And fail to register facebook account

  Scenario: As User I fail register to Facebook when put exist mobile phone on mobile phone or email input form (mobile phone from locked user)
    Given open facebook and click create account button
    When put first name "Jonson" on first name input form
    And put surname "Loe" on surname input form
    And put number or email "08123456789" on number or email input form
    And put password "Test1234_" on new password input form
    And select date "31" on date of birth
    And select month "Jul" on month of birth
    And select year "2000" on year of birth
    And select gender "Male" on gender option
    Then click sign up button
    And fail to register facebook account

  Scenario: As User I fail register to Facebook when put inactive mobile phone on mobile phone or email input form
    Given open facebook and click create account button
    When put first name "Jonson" on first name input form
    And put surname "Loe" on surname input form
    And put number or email "081111111111" on number or email input form
    And put password "Test1234_" on new password input form
    And select date "31" on date of birth
    And select month "Jul" on month of birth
    And select year "2000" on year of birth
    And select gender "Male" on gender option
    Then click sign up button
    And fail to register facebook account

  Scenario Outline: As User I fail register to Facebook when put invalid mobile phone on mobile phone or email input form (alfanumerik,contains space,invalid format,long digit,under min required)
    Given open facebook and click create account button
    When put first name "Jonson" on first name input form
    And put surname "Loe" on surname input form
    And put number or email "<mobilePhone>" on number or email input form
    And put password "Test1234_" on new password input form
    And select date "31" on date of birth
    And select month "Jul" on month of birth
    And select year "2000" on year of birth
    And select gender "Male" on gender option
    Then click sign up button
    And fail to register facebook account
    Examples:
    | mobilePhone                                          |
    | 0811ABCD11111                                        |
    | 08123 45667                                          |
    | 99999999999                                          |
    | 0811111111111111111111111111111111111111111111111111 |
    | 081                                                  |

  Scenario: As User I fail register to Facebook when put only space on mobile phone or email input form
    Given open facebook and click create account button
    When put first name "Jonson" on first name input form
    And put surname "Loe" on surname input form
    And put number or email " " on number or email input form
    And put password "Test1234_" on new password input form
    And select date "31" on date of birth
    And select month "Jul" on month of birth
    And select year "2000" on year of birth
    And select gender "Male" on gender option
    Then click sign up button
    And fail to register facebook account

  Scenario Outline: As User I fail register to Facebook when put invalid password (length min required -> 6 is req, not contain lower case, uppercase, char, number, long digit)
    Given open facebook and click create account button
    When put first name "Jonson" on first name input form
    And put surname "Loe" on surname input form
    And put number or email "Test1@gmail.com" on number or email input form
    And put password "<password>" on new password input form
    And select date "31" on date of birth
    And select month "Jul" on month of birth
    And select year "2000" on year of birth
    And select gender "Male" on gender option
    Then click sign up button
    And fail to register facebook account
    Examples:
    | password                                                    |
    | Tes                                                         |
    | TEST1234_                                                   |
    | test1234_                                                   |
    | test1234_                                                   |
    | testtest_                                                   |
    | test1234                                                    |
    | Test_123411111111111111111111111111111111111111111111111111 |


  Scenario: As User I fail register to Facebook with date of birth is using today
    Given open facebook and click create account button
    When put first name "Jonson" on first name input form
    And put surname "Loe" on surname input form
    And put number or email "Test3@gmail.com" on number or email input form
    And put password "Test1234_" on new password input form
    And select date "now" on date of birth
    And select month "now" on month of birth
    And select year "now" on year of birth
    And select gender "Male" on gender option
    Then click sign up button
    And fail to register facebook account

  Scenario: As User I fail register to Facebook with date of birth is tommorow
    Given open facebook and click create account button
    When put first name "Jonson" on first name input form
    And put surname "<surname>" on surname input form
    And put number or email "Test3@gmail.com" on number or email input form
    And put password "Test1234_" on new password input form
    And select date "tommorow" on date of birth
    And select month "now" on month of birth
    And select year "now" on year of birth
    And select gender "Male" on gender option
    Then click sign up button
    And fail to register facebook account

  Scenario: As User I fail register to Facebook with date of birth under min required
    Given open facebook and click create account button
    When put first name "Jonson" on first name input form
    And put surname "<surname>" on surname input form
    And put number or email "Test3@gmail.com" on number or email input form
    And put password "Test1234_" on new password input form
    And select date "1" on date of birth
    And select month "Jan" on month of birth
    And select year "2012" on year of birth
    And select gender "Male" on gender option
    Then click sign up button
    And fail to register facebook account

  Scenario: As User I fail register to Facebook with date of birth with oldest year in list
    Given open facebook and click create account button
    When put first name "Jonson" on first name input form
    And put surname "Loe" on surname input form
    And put number or email "Test3@gmail.com" on number or email input form
    And put password "Test1234_" on new password input form
    And select date "31" on date of birth
    And select month "Jul" on month of birth
    And select year "1905" on year of birth
    And select gender "Male" on gender option
    Then click sign up button
    And fail to register facebook account

  Scenario: As User I fail register to Facebook when chosing custom gender but not select pronoun
    Given open facebook and click create account button
    When put first name "Jonson" on first name input form
    And put surname "<surname>" on surname input form
    And put number or email "Test3@gmail.com" on number or email input form
    And put password "Test1234_" on new password input form
    And select date "31" on date of birth
    And select month "Jul" on month of birth
    And select year "2000" on year of birth
    And select gender "Custom" on gender option
    Then click sign up button
    And fail to register facebook account




