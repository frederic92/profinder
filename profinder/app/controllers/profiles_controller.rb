class ProfilesController < ApplicationController
    
    before_action :authenticate_user!
    before_action :only_current_user
    
    
    def new
        @user = User.find( params[:user_id] )
        @profile = Profile.new
    end
    
    def create
        @user = User.find( params[:user_id])
        @profile = @user.build_profile(profile_params)
        if @profile.save
            flash[:success] = "Profile updated!"
            redirect_to user_path( params[:user_id])
        else
            render action: :new
        end
            
    end
    
    def edit
         @user = User.find( params[:user_id])
         @profile = @user.profile
    end
    
    def update
        @user = User.find( params[:user_id])
        @profile = @user.profile
        if @profile.update_attributes(profile_params)
            redirect_to user_path(params[:user_id])
        else
            render action: :edit
        end
    end
    
    private
    
    def profile_params
        params.require(:profile).permit(:first_name, :last_name, :job_title, :description, :company_name, :url, :contact_email)
    end
    
    
    
end