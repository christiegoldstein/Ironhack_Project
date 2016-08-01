class StudyGroupsController < ApplicationController

	def find
		@user = current_user
		@course = @user.courses.last.name
		@searched_groups = StudyGroup.where(course_id: @user.courses.last.id)
		@users_arr = StudyGroup.new.majors(@searched_groups)
		@hobbies_arr = StudyGroup.new.hobbies(@searched_groups)
		render "find"
	end

	def show
	end

end