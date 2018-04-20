require 'capybara/dsl'

class BbcRegisterPage
  include Capybara::DSL

  REGISTER_PAGE = 'https://account.bbc.com/register'
  PARENT_ID_ENTRY = 'email-input'
  SUBMIT_BUTTON = 'submit-button'


  def click_register_as_under_age_button
    click_link('Under 13')
  end

  def enter_parent_email(email)
    fill_in(PARENT_ID_ENTRY, with: email)
  end

  def click_send_email_button
    click_button(SUBMIT_BUTTON)
  end

  def find_end_of_email_text
    find('p').text
  end

end
