# sparta_ui_testing

# Purpose
Following on from the subject of api testing this is my first time using selenium to create automated tests.

We created automation for passing data to fill in document form. Then use RSpec tests to see if the that we pass was correct.

Finally we used Faker to generate dynamic random data to create fully automated tests.

# Structure

A file needs to be setup to access the selenium web-driver and then access the url of the api the data will be passed over to. Then methods need be created for each of the forms elements using their id's in order to pass over information.

Then using an RSpec file we can instantiate each of the methods and therefoe be able to to test each of the elements that they access using the relevant type of data in order to pass and fail the relevant tests.

# Capybara
Is a domain specific language framework that sits on top of the web-driver in this case the web-driver is Selenium. Capybara contains a library of methods which makes passing data to the browser a much simpler and faster task.

# Breakdown on the Classes

I have created three different classes to test three different processes.

## Home page test / bbc_homepeage.rb

### Given:
use the capybara method visit to call the URL for the bbc.co.uk web site

### When:
use the capybara method find to find the sign-in link and then the method click press on the link  

### Then:
it should takes us to the register page

## Register page test / bbc_sign_in_page.rb

### Given:
That we automate navigation to the bbc.co.uk signin page

### When:
 we use the capybara fill_in method to pass a incorrect username and a password

 then use the click_button method to click on the submit form button

### Then:
then the page should respond with the correct and appropriate error message

### Given:
That we automate navigation to the bbc.co.uk signin page

### When:
 we do not enter any details into the username and password input boxes

 then use the click_button method to click on the submit form button

### Then:
then the page should respond with the correct and appropriate error message

### Given:
That we automate navigation to the bbc.co.uk signin page

### When:
 we enter details that are too short

 then use the click_button method to click on the submit form button

### Then:
then the page should respond with the correct and appropriate error message for inputs that are too short


# Register page test / account.bbc.com/register'

### Given:
That we automate navigation to the bbc.co.uk register page

### When:
when we use the click_link method to click on the under 13 href link

### Then
It should take us to the enter guardians details parent control page

# Register underage test / account.bbc.com/register/details/guardian

### Given:
we are at in the guardian sighin in page after the

### When:
we use the capybara fill_in method to enter an incorrect parent email and the use the click_button method to click on the submit button

### Then:
we should get an appropriate error message
