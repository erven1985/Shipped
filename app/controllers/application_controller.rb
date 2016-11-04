class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?
  before_filter :jobt

	def jobt
    
		if current_user


    @lastjob = Job.where(user_id: current_user.id)
    @lastboat = Boat.where(user_id: current_user.id)
    end
     
	end


   	def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:firstname, :lastname, :username, :dob, :gender, :user_type, :email, :password, :password_confirmation, :remember_me, :avatar])
      devise_parameter_sanitizer.permit(:account_update, keys: [:firstname, :lastname, :username, :dob, :gender, :user_type, :email, :password, :password_confirmation, :remember_me, :avatar])
 			
   end

end
