require 'capybara/dsl'

class BbcSignInpage
 include Capybara::DSL

 SIGN_IN_PAGE = 'https://account.bbc.com/signin'
 USERNAME_SIGN_IN = 'user-identifier-input'
 PASSWORD_SIGN_IN = 'password-input'
 SIGN_IN_BUTTON = 'submit-button'
 GENERAL_DETAILS_NOT_ENTERED = 'form-message-general'
 USERNAME_SIGN_IN_ERROR = 'form-message-username'
 PASSWORD_SIGN_IN_ERROR = 'form-message-password'



 def visit_sign_in_page
   visit(SIGN_IN_PAGE)
 end

 def fill_in_username(username)
   fill_in(USERNAME_SIGN_IN, :with => username)
 end

 def fill_in_password(password)
   fill_in(PASSWORD_SIGN_IN, :with => password)
 end

 def click_sign_in_button
   click_button(SIGN_IN_BUTTON)
 end

 def incorrect_password_text
   'Sorry, we can\'t find an account with that username. If you\'re over 13, try your email address instead or get help here.'
 end

 def user_details_check
   find(:id, USERNAME_SIGN_IN_ERROR).text
 end

 def password_details_check
   find(:id, PASSWORD_SIGN_IN_ERROR).text
 end

 def general_details_check
   find(:id, GENERAL_DETAILS_NOT_ENTERED).text
 end

 def short_user_entry
   find(:id, USERNAME_SIGN_IN_ERROR).text
 end

 def short_password_entry
   find(:id, PASSWORD_SIGN_IN_ERROR).text
 end

end

# test1 = BbcSignInpage.new
# test1.visit_sign_in_page
# test1.fill_in_username('Jose')
# test1.fill_in_password('hbad78hb37kbq2')
# test1.click_sign_in_button
