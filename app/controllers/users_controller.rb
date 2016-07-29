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
		@course = Course.find_by(name: params[:user][:courses_attributes]["0"][:name])

		@hobby = Course.find_by(name: params[:user][:hobbies_attributes]["0"][:name])
		@user_course = UserCourse.where(user_id: @user.id, course_id: @course.id)
		@user_hobby = UserHobby.where(user_id: @user.id, course_id: @hobby.id)

 		if @course != nil &&  @user_course == nil
		  	UserCourse.create!(user_id: @user.id, course_id: @course.id)
		else
			new_course = Course.create!(name: params[:user][:courses_attributes][:name], code: params[:courses_attributes][:code] )
			@user.courses << new_course
		end

		if @hobby != nil && @user_hobby == nil
			UserHobby.create!(user_id: @user.id, hobby_id: @hobby.id)
		else
			Hobby.create!(name: params[:user][:hobbies_attributes][:name])
			@user.hobbies << new_hobby	
		end

		params[:user].delete(:password) if params[:user][:password].blank?
		if @user.update_attributes(user_params)
		   flash[:success] = "Edit Successful."
		   redirect_to '/users/profile'
		else
		   render 'edit'
		end
	end

	private
	def user_params
		params.require(:user).permit(:name, :last_name, :email, :password, 
    		 :password_confirmation, :university, :major, :minor, :age)
	end

end
