require 'rubygems'

#Load all the fixture and helpter files into memory
require "rspec"
require 'rspec/expectations'

require 'require_all'

require 'rest-client'

#For debugging load the Pry gem
require 'pry'


require 'capybara'
require 'capybara/cucumber'
require 'rspec'
require 'selenium/webdriver'
require 'site_prism'
require 'yaml'

caps = Selenium::WebDriver::Remote::Capabilities.chrome

Capybara.default_driver = :selenium
Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.run_server = false
Capybara.app_host = 'https://panel.loginextsolutions.com'
Capybara.default_max_wait_time = 10
Capybara.ignore_hidden_elements = false
