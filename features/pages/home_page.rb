class HomePage < BasePage
    attr_accessor :button_start
  def initialize
    @button_sign_up = Element.new(:css, '#signup-b')
    @input_signup_name_login = Element.new(:css, '#signup input[name="login"]')
    @input_signup_name_password1 = Element.new(:css, '#signup input[name="password1"]')
    @input_signup_name_password2 = Element.new(:css, '#signup input[name="password2"]')
    @input_signup_name_project_name = Element.new(:css, '#signup input[name="project_name"]')
    @button_signup_close = Element.new(:css, '#signup .closecross')
    @form_sign_up = Element.new(:css, '#signup')
    @button_login = Element.new(:css, '#login-b')
    @form_login = Element.new(:css, '#login')
    @input_login_name_login = Element.new(:css, '#login input[name="login"]')
    @input_login_name_password = Element.new(:css, '#login input[name="password"]')
    @button_sign_in = Element.new(:css, '#login .innerButton')
    @form_login_errorText = Element.new(:css, "form[action='/login']> .alert")
  end
  def load
    visit('/legacy')
  end

  def isVisible
    @button_sign_up.isVisible
  end

  def openSignUp
    @button_sign_up.click
  end

  def enterName(name)
    @input_signup_name_login.send_keys(name)
  end

  def enterPassword(password)
      @input_signup_name_password1.send_keys(password)
      @input_signup_name_password2.send_keys(password)
   end

  def enterProjectName(projectname)
     @input_signup_name_project_name.send_keys(projectname)
  end

  def closeWindow
    @button_signup_close.click
    
  end

  def signupisclosed
    @button_signup_close.visible?
  end

  def openSignIn
    @button_login.click
  end

  def signInIsVisible
    @form_login.isVisible
  end
  def enterLoginName(email)
     @input_login_name_login.send_keys(email)
  end

  def enterLoginPassword(password)
    @input_login_name_password.send_keys(password)
  end
  
  def  signInNow
    @button_sign_in.click
  end

  def errorIsVisible
    @form_login_errorText.visible?
  end


end