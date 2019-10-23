# encoding: UTF-8

module Actionwords

  def i_open_the_app
    #Appium is started
  end

  def i_tap_on_the_p1_button(p1 = "")
      wait { $driver.find_element(:accessibility_id, "Let's Start").click }
  end

  def i_should_see_the_what_do_we_call_you_screen
    puts "I should see the What do we call you screen"
  end

  def i_tap_the_first_name_field_and_enter(string)
     wait { $driver.find_element(:accessibility_id, "FirstName").send_keys(string) }
  end

  def i_tap_on_the_last_name_field_and_enter(string)
    puts string
    wait {
        $driver.find_element(:accessibility_id, "LastName").send_keys(string)
        $driver.find_element(:accessibility_id, "Next").click
    }
  end

  def i_should_see_the_end_user_license_agreement_screen
    puts "I should see the EULA screen"
  end

  def i_tap_on_the_accept
    wait { $driver.find_element(:accessibility_id, "Accept").click }
  end

  def i_should_see_the_lets_get_you_started_screen
    puts "I should see the Let's get you started screen"
  end

  def i_tap_on_the_mobile_number_field_and_enter(string)
    puts string
    wait {
      $driver.find_element(:accessibility_id, "MobileNumber").click
      $driver.find_element(:accessibility_id, "MobileNumber").send_keys(string)
      $driver.find_element(:accessibility_id, "Send OTP").click
   }
  end

  def i_tap_send_otp_button
    puts "I tap on Send OTP"
  end

  def i_should_see_the_confirm_your_number_with_one_time_password_screen
     puts "I should see the confirm your number with one time password screen"
  end

  def i_enter_the_default_otp(string)
    puts string
    #wait { $driver.find_element(:accessibility_id, "otp 0").displayed?}
    $driver.find_element(:accessibility_id, "otp 0").click
    $driver.find_element(:accessibility_id, "otp 0").send_keys('1')
    $driver.find_element(:accessibility_id, "otp 1").click
    $driver.find_element(:accessibility_id, "otp 1").send_keys('2')
    $driver.find_element(:accessibility_id, "otp 2").click
    $driver.find_element(:accessibility_id, "otp 2").send_keys('3')
    $driver.find_element(:accessibility_id, "otp 3").click
    $driver.find_element(:accessibility_id, "otp 3").send_keys('4')
    $driver.find_element(:accessibility_id, "otp 4").click
    $driver.find_element(:accessibility_id, "otp 4").send_keys('5')
    $driver.find_element(:accessibility_id, "otp 5").click
    $driver.find_element(:accessibility_id, "otp 5").send_keys('6')
    $driver.find_element(:accessibility_id, "otp 6").click
    $driver.find_element(:accessibility_id, "otp 6").send_keys('7')
    $driver.find_element(:accessibility_id, "otp 7").click
    $driver.find_element(:accessibility_id, "otp 7").send_keys('8')
  end

  def i_should_see_the_one_more_thing_screen
      wait.until_true { $driver.find_element(:accessibility_id, "Let's Go").click }
  end

  def i_should_see_the_main_dashboard_page

  end
end