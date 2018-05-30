Given(/^I am on Appimation home page/) do
  @tests.login_tests.load_home_page
end

When(/^I open Sign Up/) do
  @tests.signup_tests.validate_signup
end

Then(/^I see if Sign Up window is visible/) do
  @tests.signup_tests.sign_up_is_visible
end

When(/^I enter all required information/) do
  @tests.signup_tests.enter_information()
end

And(/^I close Sign Up window/) do
  @tests.signup_tests.close_sign_up_window
end

Then(/^I see that Sign Up window is closed/) do
  @tests.signup_tests.signup_window_is_closed
end

When(/^I open Sign In/) do
  @tests.login_tests.open_sign_in_window
end

Then(/^I see if Sign In window is visible/) do
  @tests.login_tests.sign_in_window_is_visible
end

When(/^I enter all hey/) do
  @tests.login_tests.hey()
end

And(/^I try to Sign In/) do
  @tests.login_tests.sign_in_now
end

Then(/^I see that User has a error/) do
  @tests.login_tests.error_is_visible
end





