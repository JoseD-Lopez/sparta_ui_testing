Given("I access the medium login page") do
  medium_homepage.visit_home_page
end

Given("I click on the sign-in link") do
  medium_homepage.visit_signin_page
end

When("I choose sign-in with email") do
  medium_homepage.choose_email_signin
end

Then ("I enter my email") do
  medium_homepage.fill_in_email('jdavidhenao0123@gmail.com')
end

Then("I click on continue button") do
    medium_homepage.click_continue_button
end

Then("page confirmation page shows") do
  expect(medium_homepage.signed_in_confirmaion).to eq 'Check your inbox'
end
