class StudyGroupsController < ApplicationController

	def find
		@user = current_user
		@course = @user.courses.first.name
		p @course
		@searched_groups = StudyGroup.where(course_id: @user.courses.first.id)
		p StudyGroup.where(course_id: @user.courses.first.id)
		@users_arr = StudyGroup.new.majors(@searched_groups)
		@hobbies_arr = StudyGroup.new.hobbies(@searched_groups)
		render "find"
	end

end