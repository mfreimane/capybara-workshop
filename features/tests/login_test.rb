class LoginTest
  def initialize(pages)
    @pages = pages
  end

  def load_home_page
    @pages.page_home.load
    # @pages.page_home.isVisible
  end

  def open_sign_in_window
    @pages.page_home.openSignIn
  end

  def sign_in_window_is_visible
    @pages.page_home.signInIsVisible
  end

  def hey()
    user = Users.contact_form_user
    @pages.page_home.enterLoginName(user.email)
    @pages.page_home.enterLoginPassword(user.password)
    sleep(2)
  end

  def sign_in_now
    @pages.page_home.signInNow
  end

  def error_is_visible
    @pages.page_home.errorIsVisible
  end

end