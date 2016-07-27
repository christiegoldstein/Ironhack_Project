class StudyGroupsController < ApplicationController

	def initialize 
		@groups_arr = []
	end 

	def find
		@user = current_user
		@course_id = UserCourse.find_by(user_id: @user.id).course_id
		@course = Course.find_by(id: @course_id)
		@search_by = StudyGroup.where(course_id: @course_id)
		p "hello"
		p @search_by
		@search_by.each do |result|
		
			@groups_arr.push(result)
		end
		render "find"
	end

	def show
	end

end