require 'selenium-webdriver'

chrome_driver = Selenium::WebDriver.for :chrome #in this module pull out this driver

chrome_driver.get('http://toolsqa.com/automation-practice-form/')


chrome_driver.find_element(:name, 'firstname').displayed?

chrome_driver.find_element(:name, 'firstname').send_keys('test')

sleep 4
