require 'spec_helper'

describe 'Incorrect user details produces valid error' do
  before(:all) do
    @bbc_site = BbcSite.new
    @bbc_homepage = @bbc_site.bbc_homepage
    @bbc_sign_in_page = @bbc_site.bbc_sign_in_page
  end

  context 'It should respond with the correct error message when incorrect details are input' do
    it 'should produce an error when inputting an incorrect password of a non-existant account' do

      @bbc_homepage.visit_home_page
      @bbc_homepage.click_sign_in_link
      @bbc_sign_in_page.fill_in_username('dszfxsdgdfgdf')
      @bbc_sign_in_page.fill_in_password('safsezddrfcdxrfc5555')
      @bbc_sign_in_page.click_sign_in_button
      expect(@bbc_sign_in_page.incorrect_password_text).to eq 'Sorry, we can\'t find an account with that username. If you\'re over 13, try your email address instead or get help here.'
    end
  end

  context 'It should respond with the correct error when no details are entered' do
    it 'should produce three errors when no username or password are entered' do
      @bbc_homepage.visit_home_page
      @bbc_homepage.click_sign_in_link
      @bbc_sign_in_page.click_sign_in_button
      expect(@bbc_sign_in_page.general_details_check).to eq 'Sorry, those details don\'t match. Check you\'ve typed them correctly.'
      expect(@bbc_sign_in_page.password_details_check).to eq 'Something\'s missing. Please check and try again.'
      expect(@bbc_sign_in_page.user_details_check).to eq 'Something\'s missing. Please check and try again.'
    end
  end

  context 'It should respond with an error when what was entered is too short' do
    it 'should produce two error messages when the user name and password entry is to short' do
      @bbc_homepage.visit_home_page
      @bbc_homepage.click_sign_in_link
      @bbc_sign_in_page.fill_in_username('d')
      @bbc_sign_in_page.fill_in_password('s')
      @bbc_sign_in_page.click_sign_in_button
      expect(@bbc_sign_in_page.short_user_entry).to eq 'Sorry, that username\'s too short. It needs to be at least two characters.'
      expect(@bbc_sign_in_page.short_password_entry).to eq 'Sorry, that password is too short. It needs to be eight characters or more.'
    end
  end
end
