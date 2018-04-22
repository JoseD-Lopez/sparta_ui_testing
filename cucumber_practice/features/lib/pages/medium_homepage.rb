require 'capybara/dsl'

class MediumHomepage
  include Capybara::DSL

    HOMEPAGE_URL = 'https://medium.com/'
    SIGN_IN_PAGE_LINK = 'Sign in'
    SIGNED_IN = 'Check your inbox'
    EMAIL_FIELD = 'email'
    CONTINUE_BUTTON = 'Continue'

  def visit_home_page
    visit(HOMEPAGE_URL)
  end

  def visit_signin_page
    click_link(SIGN_IN_PAGE_LINK)
  end

  def choose_email_signin
    find('.js-buttonLabel', :text => 'Sign in with email').click
  end

  def fill_in_email(email)
    fill_in(EMAIL_FIELD, with: email)
    sleep 3
  end

  def click_continue_button
    click_button(CONTINUE_BUTTON)
  end

  def signed_in_confirmaion
    find(SIGNED_IN)
  end

end
