class UsersController < ApplicationController
	before_action :authenticate_user!, only: :show

	def home
		render "home"
	end

	def profile
		@user = current_user
		p @user.hobbies
		if(UserGroup.find_by(user_id: current_user.id) != nil)
			@group = UserGroup.find_by(user_id: current_user.id)
			@study_group = StudyGroup.find_by(id: @group.study_group_id)
			@users = UserGroup.where(study_group_id: @study_group.id)
		end
		render "profile"
	end

	def edit
		@user = current_user
		render "edit"
	end

	def update
		@user = current_user

 		if Course.find_by(name: params[:user][:courses_attributes]["0"][:name]) != nil && UserCourse.find_by(user_id: @user.id, course_id: Course.find_by(name: params[:user][:courses_attributes]["0"][:name]).id) == nil
 			p "in here"
 			@course = Course.find_by(name: params[:user][:courses_attributes]["0"][:name])
		  	UserCourse.create!(user_id: @user.id, course_id: @course.id)
		elsif Course.find_by(name: params[:user][:courses_attributes]["0"][:name]) == nil
			new_course = Course.create!(name: params[:user][:courses_attributes]["0"][:name], code: params[:user][:courses_attributes]["0"][:code] )
			@user.courses << new_course
		end

		if Hobby.find_by(name: params[:user][:hobbies_attributes]["0"][:name]) != nil && UserHobby.find_by(user_id: @user.id, hobby_id: Hobby.find_by(name: params[:user][:hobbies_attributes]["0"][:name]).id) == nil
			@hobby = Hobby.find_by(name: params[:user][:hobbies_attributes]["0"][:name])
			UserHobby.create!(user_id: @user.id, hobby_id: @hobby.id)
		elsif Hobby.find_by(name: params[:user][:courses_attributes]["0"][:name]) == nil
			new_hobby = Hobby.create!(name: params[:user][:hobbies_attributes]["0"][:name])
			@user.hobbies << new_hobby	
		end

		params[:user].delete(:password) if params[:user][:password].blank?
		if @user.update_attributes(user_params)
			sign_in(@user, :bypass => true)
		   flash[:success] = "Edit Successful."
		   redirect_to '/users/profile'
		else
		   render 'edit'
		end
	end

	private
	def user_params
		params.require(:user).permit(:name, :last_name, :email, :password, 
    		 :password_confirmation, :university, :major, :minor, :age,
  			{hobbies_attributes: [:name]}, {courses_attributes: [:name, :code]})
	end

end
