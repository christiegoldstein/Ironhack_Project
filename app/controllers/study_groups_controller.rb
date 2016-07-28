class StudyGroupsController < ApplicationController

	def find
		@user = current_user
		@course = @user.courses.last.name
		@search_by = StudyGroup.where(course_id: @user.courses.last.id)
		render "find"
	end

	def show
	end

end