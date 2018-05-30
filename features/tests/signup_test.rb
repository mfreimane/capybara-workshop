class SignupTest
    def initialize(pages)
      @pages = pages
    end

    def load_home_page
        @pages.page_home.load
        # @pages.page_home.isVisible
    end
    
    def validate_signup
      @pages.page_home.openSignUp
    end
    
    def sign_up_is_visible
        @pages.page_home.isVisible
    end
    
    def enter_information()
        user = Users.contact_form_user
        @pages.page_home.enterName(user.name)
        @pages.page_home.enterPassword(user.password)
        @pages.page_home.enterProjectName(user.projectname)
        sleep(2)
    end
    
    def close_sign_up_window
        @pages.page_home.closeWindow
    end

    def  signup_window_is_closed
        @pages.page_home.signupisclosed
    end
    
    
end
    