#ruby frameworks to require
require 'rspec/expectations'
require 'appium_lib'
#require 'cucumber/ast'
require 'rubygems'

# Create a custom World class so we don't pollute `Object` with Appium methods
class AppiumWorld
end

#creating an array from the data in the YML file
#appLoginDetails = YAML.load_file("features/support/appLoginDetails.yml")

#this environment variable to choose which device we would do our automated tests on
case ENV['DEVICE_NAME']
  when 'ipad simulator'
  caps = Appium.load_appium_txt file: File.expand_path("/Users/lay.mui/Desktop/ERP-mobile/features/support/appium.txt", __FILE__), verbose: true
  when 'iphone simulator'
  caps = Appium.load_appium_txt file: File.expand_path("/Users/lay.mui/Desktop/ERP-mobile/features/support/appium.txt", __FILE__), verbose: true
end

#this environment variable to choose the orientation that iOS device would be in for the automated tests.
case ENV['DEVICE_ORIENTATION']
  when 'portrait'
  caps[:caps].merge!(orientation:"PORTRAIT")
  when 'landscape'
  caps[:caps].merge!(orientation:"LANDSCAPE")
end

#Display caps to make sure we are working wth the right ones
puts caps

#def wait_for
 # Selenium::WebDriver::Wait.new(:timeout => 10).until { yield }
#end
# Start the driver
$driver = Appium::Driver.new(caps, true)

Appium.promote_appium_methods AppiumWorld

World do
  AppiumWorld.new
end

#before and after Cucumber hooks
Before do
  $driver.start_driver
end

After do
  $driver.driver_quit
end

def wait_for
  Selenium::WebDriver::Wait.new(:timeout => 30).until { yield }
end
