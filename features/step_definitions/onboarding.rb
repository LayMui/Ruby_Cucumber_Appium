require_relative 'actionwords'
World(Actionwords)

Given /^I open the app$/ do
  i_open_the_app
end

#When("I tap on the {string} button") do |string|
   # puts string
   # wait { $driver.find_element(:accessibility_id, "Let's Start").click }
   When /^I tap on the "(.*)" button$/ do |p1|
  i_tap_on_the_p1_button(p1)
end

#end

Then /^I should see the What do we call you screen$/ do
  i_should_see_the_what_do_we_call_you_screen
end

When("I tap the first name field and enter {string}") do |string|
    puts string
    i_tap_the_first_name_field_and_enter(string)
end

When("I tap on the last name field and enter {string}") do |string|
    i_tap_on_the_last_name_field_and_enter(string)
end

Then("I should see the End-User License Agreement screen") do
  i_should_see_the_end_user_license_agreement_screen
end

When("I tap on the Accept") do
    i_tap_on_the_accept
end

Then("I should see the Let\'s get you started screen") do
    i_should_see_the_lets_get_you_started_screen
end

When("I tap on the Mobile Number field and enter {string}") do |string|
    i_tap_on_the_mobile_number_field_and_enter(string)
end

When("I tap Send OTP button") do
    i_tap_send_otp_button
end

Then("I should see the Confirm your number with One Time Password screen") do
    i_should_see_the_confirm_your_number_with_one_time_password_screen
end

When("I enter the default OTP {string}") do |string|
    i_enter_the_default_otp(string)
end

Then("I should see the One More Thing screen") do
    i_should_see_the_one_more_thing_screen
end

Then("I should see the main dashboard page") do
    i_should_see_the_main_dashboard_page
end