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
		#@user.hobbies.build
		#@user.courses.build
		render "edit"
	end

	def update
		@user = current_user
		@course = Course.find_by(name: params[:user][:courses_attributes]["0"][:name])
		@hobby = Course.find_by(name: params[:user][:hobbies_attributes]["0"][:name])
		puts @hobby
		if user_params[:password].blank?
    		user_params.delete(:password)
    		user_params.delete(:password_confirmation)
 		end


 		if @course != nil
		  	UserCourse.create!(user_id: @user.id, course_id: @course.id)
		else
			Course.create!(name: params[:user][:courses_attributes][:name], code: params[:courses_attributes][:code] )
		end

		if @hobby != nil
			UserHobby.create!(user_id: @user.id, hobby_id: @hobby.id)
		else
			Hobby.create!(name: params[:user][:hobbies_attributes][:name])		
		end

	    if @user.update_attributes(user_params)
	      flash[:notice] = 'The User is successfully updated!'
	      redirect_to "/users/profile"
	    else
	      flash[:error] = @user.errors.full_messages[0]
	      redirect_to "/users/profile/edit"
	    end
	end

	private
	def user_params
		params.require(:user).permit(:name, :last_name, :email, :password, 
    		 :password_confirmation, :university, :major, :minor, :age)
	end

end
