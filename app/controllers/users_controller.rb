class UsersController < ApplicationController
    skip_before_action :require_login, only: %i[new create]

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            redirect_to login_path, success: t('.success')
        else
            flash.now[:danger] = t('.aleat')
            render :new
        end
    end
    
    
    
    private
    
    def user_params
        params.require(:user).permit(:last_name, :first_name, :email, :password, :password_confirmation)
    end

end
