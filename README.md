# sparta_ui_testing
user interface testing with tools
# Purpose
Following on from the subject of api testing this is my first time using selenium to create automated tests.

We created automation for passing data to fill in document form. Then use RSpec tests to see if the that we pass was correct.

Finally we used Faker to generate dynamic random data to create fully automated tests.

# Structure

A file needs to be setup to access the selenium web-driver and then access the url of the api the data will be passed over to. Then methods need be created for each of the forms elements using their id's in order to pass over information.

Then using an RSpec file we can instantiate each of the methods and therefoe be able to to test each of the elements that they access using the relevant type of data in order to pass and fail the relevant tests.
