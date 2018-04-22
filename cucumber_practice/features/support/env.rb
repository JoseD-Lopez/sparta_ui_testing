require 'capybara/cucumber'
require 'capybara/dsl'
require_relative '../lib/medium_site'

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app,:browser => :chrome)
end

Capybara.configure do |config|
  config.ignore_hidden_elements = false #to ensure that all hidden elements on the page are recorded and available
  config.default_max_wait_time= 10 #wait time for asynchronous process to finish
  config.match = :prefer_exact #this is to encure Capybara has specific matching rather than fuzzy logic
  config.default_driver = :chrome #this ensure chrome is the default driver
end

World(MediumSite)
