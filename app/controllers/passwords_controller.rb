class PasswordsController < ApplicationController
    before_action :require_user_logged_in!
    
    def edit
    end

    def update
        if Current.user.update(password_update)
         redirect_to root_path, notice: "Password Updates"
        else
         render :edit 
        end   
    end

    private
    def password_update
        params.require(:user).permit(:password,:password_confirmation)
    end
end