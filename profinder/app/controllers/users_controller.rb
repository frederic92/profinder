class UsersController < ApplicationController
    
    before_action :authenticate_user!
    
    def show
        @user = User.find(params[:id])
        @profile = @user.profile
    end
    
    def index
        if params[:field].blank?
            @users = User.all.order("created_at DESC")
        else
            
        end
    end
end