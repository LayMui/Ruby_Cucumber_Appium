Feature: Add Organisation
  In order perform any business transaction
  I need to create a new organisation

  Background:
    Given an app user is the first time user
    When she enters her first name as Lay Mui
    And her last name as Toh
    And she registers her mobile number 12345678901
    And she enters the correct OTP 123456
    Then she should be landed on the main dashboard

  Scenario: Add a new organisation
    #Given 'Lay Mui' is at the main organisation
    When 'Lay Mui' create a new organisation 'Deskera'
    Then 'Lay Mui' will be the owner of the organisation 'Deskera'

