Given(/^an app user is the first time user$/) do
    i_tap_on_the_p1_button("Let's Start")
end

When(/^she enters her first name as (.*)$/) do |first_name|
    i_tap_the_first_name_field_and_enter(first_name)
end

And(/^her last name as (.*)$/) do |last_name|
    i_tap_on_the_last_name_field_and_enter(last_name)
    i_tap_on_the_accept
end

And(/^she registers her mobile number (\d*)$/) do |mobile_number|
   i_tap_on_the_mobile_number_field_and_enter(mobile_number)
end

And(/^she enters the correct OTP (\d*)$/) do |otp|
    i_enter_the_default_otp(otp)
    i_should_see_the_one_more_thing_screen
end

Then(/^she should be landed on the main dashboard$/) do
    i_should_see_the_main_dashboard_page
end