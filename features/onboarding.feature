Feature: Onboarding
  In order to go to register myself with the DESK app
  As the first time mobile app user
  I want to go through the onboarding process to register

  Scenario: Perform onboarding actions
    Given an app user is the first time user
    When she enters her first name as Lay Mui
    And her last name as Toh
    And she registers her mobile number 12345678901
    And she enters the correct OTP 123456
    Then she should be landed on the main dashboard
