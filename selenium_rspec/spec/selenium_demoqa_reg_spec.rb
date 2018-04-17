require 'spec_helper'
require 'gen_data'

describe 'testing the demoqa registration page' do

  before(:all) do
    @driver = SeleniumDemoReg.new
    @driver.access_registration_form
    @wait = Selenium::WebDriver::Wait.new(timeout: 10)
    @fakedata = GenerateData.new.random_data_generator_selenium
    @first_name = @fakedata.first_name_data
    @second_name = @fakedata.second_name_data
    @country_name = @fakedata.random_country_data
    @phone_number = @fakedata.random_phone_number
    @email_generator = @fakedata.random_email_data
    @email_password = @fakedata.random_password_data
    @text_generator = @fakedata.random_text_data
  end

  context 'positive paths for the registration form and and register' do

    it 'should land on the registration page' do
      expect(@driver.current_url).to eq 'http://demoqa.com/registration/'
    end

    it 'should accept a first name' do
        @driver.first_name_field_displayed
        @driver.set_first_name_field(@first_name)
        expect(@driver.get_first_name_field_value).to eq @first_name
    end

    it 'should accept a last name' do
      @driver.last_name_field_displayed
      @driver.set_last_name_field(@second_name)
      expect(@driver.get_last_name_field_value).to eq @second_name
    end

   it 'should accept a marital status selection of Single, Married, or Divorced' do
     @driver.select_marital_option('Single')
     @driver.select_marital_option('Married')
     @driver.select_marital_option('Divorced')
   end

   it 'should accept a hobby status selection of Dance, Reading, or Cricket' do
     expect(@driver.select_hobby_option('Reading')).to eq true
   end

   it 'should have a country default of Afhghanistan' do
     expect(@driver.get_selected_country).to eq 'Afghanistan'
   end

   it 'accept a new DOB' do
     @driver.dob_month_list_select('11')
     @driver.dob_day_list_select('9')
     @driver.dob_year_list_select('2014')
   end

   it 'should accept a new country value' do
     @driver.country_dropdown_list_select(@country_name)
   end

   it 'should accept a valid phone number' do
     @driver.set_phone_number_field(@phone_number)
     expect(@driver.get_phone_number_field_value).to eq @phone_number
   end

   it 'should accept a username' do
     @driver.set_user_name_field(@first_name)
     expect(@driver.get_user_name_field_value).to eq @first_name
   end

   it 'should accept a email' do
     @driver.set_email_field(@email_generator)
     expect(@driver.get_email_field_value).to eq @email_generator
   end

   it 'should accept a about yourself text' do
     @driver.set_about_yourself_field(@text_generator)
     expect(@driver.get_about_yourself_value).to eq @text_generator
   end

   it 'should accept a password' do
     @driver.set_password_field(@email_password)
     expect(@driver.get_password_value).to eq @email_password
   end

   it 'should accept a password confirmation' do
     @driver.set_confirmation_password_field(@email_password)
     expect(@driver.get_confirmation_password_value).to eq @email_password
     expect(@driver.get_confirmation_password_value).to eq @driver.get_password_value
   end

   it 'should register successfully' do
     @driver.click_submit
     @wait
     @driver.check_registration_successful
     expect(@driver.check_registration_successful).to eq 'Thank you for your registration'
     sleep 10
   end

 end
end
