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
