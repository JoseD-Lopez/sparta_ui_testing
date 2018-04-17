require 'spec_helper'

describe 'testing the random form data service' do

  before(:all) do
    @form_data_service = GenerateData.new.random_data_generator_selenium
  end

  it 'should return a random first_name which is a string' do
    expect(@form_data_service.first_name_data).to be_a(String)
  end

  it 'should return a random second_name which is a string' do
    expect(@form_data_service.second_name_data).to be_a(String)
  end

  it 'should return a random phone number of which a string and 11 characters' do
    expect(@form_data_service.random_phone_number).to be_a(String)
    expect(@form_data_service.random_phone_number.length).to eq 11
  end

  it 'should return a random country which is a string' do
    expect(@form_data_service.random_country_data).to be_a(String)
  end

  it 'should return a random email address which is a string' do
    expect(@form_data_service.random_email_data).to be_a(String)
  end

  it 'should retrun a random password of which a string and greater then 8 characters' do
    expect(@form_data_service.random_password_data).to be_a(String)
    expect(@form_data_service.random_password_data.length).to be > 8
  end

  it 'should return a random password which is a string' do
    expect(@form_data_service.random_country_data).to be_a(String)
  end

  it 'should return random text data which is a string' do
    expect(@form_data_service.random_text_data).to be_a(String)
  end

end
