require 'capybara/dsl'

class BbcSignInpage
 include Capybara::DSL

 SIGN_IN_PAGE = 'https://account.bbc.com/signin'
 FILL_IN_USERNAME = 'user-identifier-input'
 FILL_IN_PASSWORD = 'password-input'
 SIGN_IN_BUTTON = 'submit-button'

 def visit_sign_in_page
   visit(SIGN_IN_PAGE)
 end

 def fill_in_username(username)
   fill_in(FILL_IN_USERNAME, :with => username)
 end

 def fill_in_password(password)
   fill_in(FILL_IN_PASSWORD, :with => password)
 end

 def click_sign_in_button
   click_button(SIGN_IN_BUTTON)
 end

 def incorrect_password_text
   'Sorry, we can\'t find an account with that username. If you\'re over 13, try your email address instead or get help here.'
 end

end

# test1 = BbcSignInpage.new
# test1.visit_sign_in_page
# test1.fill_in_username('Jose')
# test1.fill_in_password('hbad78hb37kbq2')
# test1.click_sign_in_button
