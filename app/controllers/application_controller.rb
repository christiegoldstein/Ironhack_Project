class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  	def configure_permitted_parameters 

  		devise_parameter_sanitizer.permit(:sign_up) do |user_params|
    		user_params.permit(:name, :last_name, :email, :password, 
    		 :password_confirmation, :university, :major, :minor, :age,
  			{hobbies_attributes: [:name]}, {courses_attributes: [:name, :code]})
  		end
  	end

    def after_inactive_sign_up_path_for(resource)
      "/users/profile/edit"
    end

  	def after_sign_in_path_for(resource)
  	 	"/users/profile/edit"
  	end

end
