class UsersController < ApplicationController
    skip_before_action :authorized, only: [:new, :create, :login, :handle_login]

    def new
        @user = User.new
        @cities = City.all
    end
    
    def login

    end

    def handle_login
        @user = User.find_by(username: params[:username])
        #byebug
        if @user && @user.authenticate(params[:password]) && params[:badge_id].to_i == @user.badge_id
            session[:user] = @user.id 
            redirect_to welcome_path
        else
            flash[:message] = "Invalid credentials, please try again."
            redirect_to login_path 
        end
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
            session[:user] = @user.id
            redirect_to welcome_path
        else
            flash[:messages] = @user.errors.full_messages 
            redirect_to new_user_path
        end

    end

    def edit
    end

    def update 
    end

    def logout
        session[:user] = nil
        redirect_to home_path
    end

    def welcome
        
    end

    private

    def user_params 
        params.require(:user).permit(:name, :password, :username, :badge_id, :city_id, :password_confirmation)
    end
end
