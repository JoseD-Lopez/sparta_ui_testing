require 'selenium-webdriver'


class SeleniumQaToolsForm

  PRACTICE_FORM_URL = 'http://toolsqa.com/automation-practice-form/'
  FIRST_NAME_FIELD_NAME = 'firstname'
  LAST_NAME_FIELD_NAME = 'lastname'
  SEX_RADIO_BUTTON_MALE = 'sex-0'
  SEX_RADIO_BUTTON_FEMALE = 'sex-1'

  def initialize
    @chrome_driver = Selenium::WebDriver.for :chrome
  end

  def visit_practice_from
    @chrome_driver.get(PRACTICE_FORM_URL)
  end

  def input_firstname_field(text)
    @chrome_driver.find_element(:name, FIRST_NAME_FIELD_NAME).send_keys(text)
  end

  def get_first_name_text
    @chrome_driver.find_element(:name, FIRST_NAME_FIELD_NAME)['value']
  end

  def input_lastname_field(text)
    @chrome_driver.find_element(:name, LAST_NAME_FIELD_NAME).send_keys(text)
  end

  def get_last_name_text
    @chrome_driver.find_element(:name, LAST_NAME_FIELD_NAME)['value']
  end

  def cilck_radio_button_male
    @chrome_driver.find_element(:id, SEX_RADIO_BUTTON_MALE).click
  end

  def cilck_radio_button_female
    @chrome_driver.find_element(:id, SEX_RADIO_BUTTON_FEMALE).click
  end

  def click_years_of_experiance_one
    @chrome_driver.find_element(:id, 'exp-0').click
  end

  def click_years_of_experiance_two
    @chrome_driver.find_element(:id, 'exp-1').click
  end

  def click_years_of_experiance_three
    @chrome_driver.find_element(:id, 'exp-2').click
  end

  def click_years_of_experiance_four
    @chrome_driver.find_element(:id, 'exp-3').click
  end

  def click_years_of_experiance_five
    @chrome_driver.find_element(:id, 'exp-4').click
  end

  def click_years_of_experiance_six
    @chrome_driver.find_element(:id, 'exp-5').click
  end

  def click_years_of_experiance_seven
    @chrome_driver.find_element(:id, 'exp-6').click
  end

  def select_generate_date(text)
    @chrome_driver.find_element(:id, 'datepicker').send_keys(text)
  end

  def select_profession_checkbox_manual_tester
    @chrome_driver.find_element(:id, 'profession-0').click
  end

  def select_profession_checkbox_auto_tester
    @chrome_driver.find_element(:id, 'profession-1').click
  end

  # def click_on_a_link
  #   @driver.find_element(:css, "a" ).click
  # end

  def select_auto_tool_checkbox_qtp
    @chrome_driver.find_element(:id, 'tool-0').click
  end

  def select_auto_tool_checkbox_ied
    @chrome_driver.find_element(:id, 'tool-1').click
  end

  def select_auto_tool_checkbox_webdriver
    @chrome_driver.find_element(:id, 'tool-2').click
  end

  def dropdown_list_element
    dropdown_list = @chrome_driver.find_element(id: 'continents')
    options = dropdown_list.find_elements(tag_name: 'option')
    options.each { |option| option.click if option.text == 'Australia' }
  end

  def select_element_from_list
    list = @chrome_driver.find_element(id: 'selenium_commands')
    options = list.find_elements(tag_name: 'option')
    options.each { |option| option.click if option.text == 'Navigation Commands' }
  end

end

form = SeleniumQaToolsForm.new
form.visit_practice_from

form.input_firstname_field('Joes')
form.get_first_name_text

form.input_lastname_field('Bones')
form.get_last_name_text

form.cilck_radio_button_male
form.cilck_radio_button_female

form.click_years_of_experiance_one
form.click_years_of_experiance_two
form.click_years_of_experiance_three
form.click_years_of_experiance_four
form.click_years_of_experiance_five
form.click_years_of_experiance_six
form.click_years_of_experiance_seven

form.select_generate_date('10/11/2015')

form.select_profession_checkbox_manual_tester
form.select_profession_checkbox_auto_tester

# form.click_on_a_link

form.select_auto_tool_checkbox_qtp
form.select_auto_tool_checkbox_ied
form.select_auto_tool_checkbox_webdriver

form.dropdown_list_element

form.select_element_from_list
