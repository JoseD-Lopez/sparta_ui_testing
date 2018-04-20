require 'spec_helper'

describe 'Test register page' do

  before(:all) do
    @bbc_site = BbcSite.new
    @bbc_homepage = @bbc_site.bbc_homepage
    @bbc_register_page = @bbc_site.bbc_register_page
  end

context 'It should navigate towards enter perental aproval website' do
  it 'should come up with the registering page for the user under 13' do
    @bbc_homepage.visit_home_page
    @bbc_homepage.click_sign_in_link
    @bbc_homepage.click_register_link
    @bbc_register_page.click_register_as_under_age_button
  end
 end

 context 'It should navigate respond with the appropriate message when entering an email that is incorrect' do
   it 'should respond with the appropriate message when entering an email that is incorrect' do
     @bbc_homepage.visit_home_page
     @bbc_homepage.click_sign_in_link
     @bbc_homepage.click_register_link
     @bbc_register_page.click_register_as_under_age_button
     @bbc_register_page.enter_parent_email('random@email.com')
     @bbc_register_page.click_send_email_button
     expect(@bbc_register_page.find_end_of_email_text).to eq "Ok, ask a grown-up to do this bit with you"
   end
  end
end
