class UsersController < ApplicationController
	before_action :authenticate_user!, only: :show

	def home
		render "home"
	end

	def profile
		@user = current_user
		p current_user
		render "profile"
	end

	def edit
		@user = current_user
		render "edit"
	end

	def update
		@user = current_user

	    if @user.update_attributes(user_params)
	      flash[:notice] = 'The User is successfully updated!'
	      profile
	    else
	      flash[:error] = @user.errors.full_messages[0]
	      edit
	    end
	end

	private
	def user_params
		params.require(:user).permit(:name, :last_name, :email, :password, 
    		 :password_confirmation, :university, :major, :minor, :age,
  			{hobbies_attributes: [:name]}, {courses_attributes: [:name, :code]})
	end

end
