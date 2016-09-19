class UsersController < ApplicationController
    
    before_action :authenticate_user!
    
    def show
        @user = User.find(params[:id])
        @profile = @user.profile
    end
    
    def index
        @users = User.all
    end
end