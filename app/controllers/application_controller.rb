class ApplicationController < ActionController::Base
    before_action :authorized, :logged_in?
    helper_method :logged_in?
    skip_before_action :authorized, only: [:home]
    
    def home
    end

    def set_current_user
        @current_user = User.find_by(id: session[:user])
    end

    def logged_in?
        !!set_current_user
    end

    def authorized
      redirect_to new_user_path unless logged_in?  
    end
end
