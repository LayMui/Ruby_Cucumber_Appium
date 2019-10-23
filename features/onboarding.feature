Feature: Onboarding
  In order to go to register myself with the DESK app
  As the first time mobile app user
  I want to go through the onboarding process to register

  Scenario: Perform onboarding actions
    Given I open the app
    When I tap on the "Let's Start" button
    Then I should see the What do we call you screen
    When I tap the first name field and enter 'Lay Mui'
    And I tap on the last name field and enter 'Toh'
    Then I should see the End-User License Agreement screen
    When I tap on the Accept
    Then I should see the Let's get you started screen
    When I tap on the Mobile Number field and enter '12345678901'
    And I tap Send OTP button
    Then I should see the Confirm your number with One Time Password screen
    When I enter the default OTP '12345678'
    Then I should see the One More Thing screen
    When I tap on the "Let's go" button
    Then I should see the main dashboard page

