When(/^I am on Appimation home page/) do
  visit('/')
 #find(:css, '#start_button')
  #find(:xpath, "//button[@id = 'start_button']")
  #find(:css, "#video")
  #find(:css, ".feature-image")
  #find(:xpath, "//h3[contains(text(), 'Team up')]/preceding-sibling::img")

  find(:xpath, "//button[@id = 'login-b']") #LOGIN
  find(:css, '#login-b')

  find(:xpath, "//button[@id = 'start_button']") #TRY NOW
  find(:css, '#start_button')

  find(:xpath, "//button[@id = 'signup-b']")  #SIGN UP
  find(:css, '#signup-b')

  find(:xpath, "//section[@id = 'cta']") #CONTACT US SECTION
  find(:css, "section[id='cta']")

  find(:xpath, "//div[@class = 'idbox']/*[@id='name']")  #NAME INPUT
  find(:css, "input[id = 'name']")

  find(:xpath, "//div[@class = 'idbox']/*[@id='email']")  #EMAIL INPUT
  find(:css, "input[id = 'email']")

  find(:xpath, "//textarea[@id='contactus-message']")  #MESSAGE INPUT
  find(:css, "textarea[id = 'contactus-message']")

  find(:xpath, "//div[@class = 'submit-contactus']/*[@id='contactus-button']")  #SEND BUTTON
  find(:css, "input[id = 'contactus-button']")

  find(:xpath, "//*[@id='footer']/*[@class = 'icons']/li/a")  #FACEBOOK LOGO
  find(:css, "div[id = 'skel-layers-wrapper']>footer[id ='footer']>ul[class = 'icons']>li>a.icon.fa-facebook")

  find(:xpath, "//section[@class='box special features']/div[1]/section[1]/img")  #IMAGE
  find(:css, "section[class = 'box special features']>div[class = 'features-row']:nth-child(1)>section:nth-child(1)>img")

  all(:xpath, "//div[@class = 'features-row']" )
  all(:css, "section[class = 'box special features']>div[class = 'features-row']")

end