class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?
  before_filter :jobt
 	def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:firstname, :lastname, :username, :dob, :gender, :email, :password, :password_confirmation, :remember_me, :avatar])
    #devise_parameter_sanitizer.permit(:account_update, keys: [:email, :password, :password_confirmation, :current_password, :firstname, :middlename, :lastname, :nickname])
			
 	end

	def jobt
		@last = Job.last(3)
	end

end
