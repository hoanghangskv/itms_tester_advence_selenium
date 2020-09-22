require 'rubygems'
require 'webdrivers' 
require 'selenium-webdriver'
 
driver = Selenium::WebDriver.for :firefox  
begin

# html_file = File.expand_path(File.dirname(File.dirname(__FILE__))) + "/selectbox.html"
# driver.get "file:///" + html_file
driver.get 'http://www.practiceselenium.com/check-out.html'

options = driver.find_element(:id, "card_type")
select_object = Selenium::WebDriver::Support::Select.new(options)
select_object.select_by(:text, "Visa")
# select_object.select_by(:index, 3)
# select_object.select_by(:value, "3")
ensure 
sleep 3
driver.quit
end 