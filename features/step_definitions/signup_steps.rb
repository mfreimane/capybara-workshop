When(/^I am on Appimation home page/) do
  visit('/')
  print obj (find(:css, '#signup').visible?
  find(:css, '#start_button').click
  unless find(:css, '#signup').visible?
  raise "element not visible"
end

  
  find(:css, '#signup .closecross').click
end