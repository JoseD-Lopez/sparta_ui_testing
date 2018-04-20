require 'capybara'

#REGISTER CHROME DRIVER WITH CAPYBARA
Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

session = Capybara::Session.new(:chrome)

session.visit('http://toolsqa.com/automation-practice-form/')

session.fill_in('firstname', with: 'test')
session.fill_in('lastname', with: 'test2')


session.choose('sex-0')
session.choose('exp-6')

session.fill_in('datepicker', with: '01/11/1965')

session.check('profession-0')
session.check('profession-1')

# session.attach_file('photo', '')

session.check('tool-0')
session.check('tool-1')
session.check('tool-2')

session.select('Europe', from: 'continents')

session.select('Navigation Commands', from: 'selenium_commands')

session.click_button('submit')

session.find(:css, '#NextedText')

session.find_button('Button')

session.find_link('Partial liNK')


sleep 4
