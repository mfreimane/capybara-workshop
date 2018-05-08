When(/^I am on Appimation home page/) do
  visit('/legacy')
  unless find(:css, '#logo').visible?
    raise "Logo not visible"
  end
end

def random_string(length=6)
  chars = 'abcdefghjkmnpqrstuvwxyzABCDEFGHJKLMNPQRSTUVWXYZ0123456789'
  string = ''
  length.times { string << chars[rand(chars.size)] }
  string
end

################################################################################
# def email()
#   random_string = random_string()
#   email = "auto#{random_string}@test.qa"
# end


# When(/^I open Try now/) do
#   find(:css, '#start_button').click
#   unless find(:css, '#signup').visible?
#     raise "element not visible"
#   end
# end


# Then("I close Try now") do
#   find(:css, '#signup .closecross').click
# end


# When("I enter {string} and {string} in name in contact us") do |name, name2|
#   unless find(:css, '#name').visible?
#     raise "name not visible"
#   end
#   find(:css, '#name').send_keys(name)
#   sleep(2)
#   find(:css, '#name').native.clear

#   find(:css, '#name').send_keys(name2)
#   sleep(2)
# end
#########################################  Complete the registration form  ####################################################

When(/^I open Sign Up/) do
    find(:css, '#signup-b').click
  end

Then(/^I see if Sign Up window is visible/) do
    # print find(:css, '#signup').visible?
    # print find(:css, "#signup input[name='login']").visible?
    unless find(:css, '#signup').visible?
     #print find(:css, "#signup").should be_visible
      raise "signup not visible"
    end
end

When(/^I enter all required information1/) do 
    random_string = random_string()
    email = "auto#{random_string}@test.qa"
    password = "auto#{random_string}"
    project_name = "My_project"

    find(:css, '#signup input[name="login"]').send_keys(email)
    find(:css, '#signup input[name="password1"]').send_keys(password)
    find(:css, '#signup input[name="password2"]').send_keys(password)
    find(:css, '#signup input[name="project_name"]').send_keys(project_name)
    sleep(2)
  #step "I enter '"{email}"' into input field having id 'name'"
end

And (/^I close Sign Up window/) do
    find(:css, '#signup .closecross').click
end

Then(/^I see that Sign Up window is closed/) do
  unless find(:css, '#signup').visible?.should be_falsey
    # print find(:css, "#signup .closecross").visible?.should be_falsey
    raise "Sign Up window is visible"
  end
end

#########################################  Complete the Sign In form  ####################################################

When(/^I open Sign In/) do
  find(:css, '#login-b').click
end

Then(/^I see if Sign In window is visible/) do
  unless find(:css, '#login').visible?
  #  print find(:css, "#login").should be_visible
    raise "Sign In window is not visible"
  end
end

When(/^I enter all required information2/) do 
  random_string = random_string()
  email = "auto#{random_string}@test.qa"
  password = "auto#{random_string}"

  find(:css, '#login input[name="login"]').send_keys(email)
  find(:css, '#login input[name="password"]').send_keys(password)
  # sleep(2)
end

And (/^I try to Sign In/) do
  # find(:css, '#login .button.button-block.innerButton').click
  find(:css, 'button.button-block.innerButton').click
  sleep(2)
end

Then(/^I see that User has a error/) do
  unless find(:css, "form[action='/login']>.alert.alert-danger>span.errorText").visible?
   raise "Error is not visible"
  end
end
