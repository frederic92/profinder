class ProfilesController < ApplicationController
    
    def new
        @user = User.find( params[:user_id] )
        @profile = @user.build_profile
    end
    
    def create
        @user = User.find( params[:user_id])
        @profile = @user.build_profile(profile_params)
        if @profile.save
            flash[:success] = "Profile updated!"
            redirect_to user_path( params[:user_id])
            
    end
    
    def show
        
    end
    
    def edit
        
    end
    
    def update
        
    end
    
    private
    
    def profile_params
        params.require(:profile).permit(:first_name, :last_name, :job_title, :description, :company_name, :url, :contact_email)
    end

end