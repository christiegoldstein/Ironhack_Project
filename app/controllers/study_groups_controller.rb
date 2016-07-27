class StudyGroupsController < ApplicationController

	def initialize 
		@groups_arr = []
	end 

	def find
		@user = current_user
		@course = @user.courses.last.name
		@search_by = StudyGroup.where(course_id: @user.courses.last.id)
		p "hello"
		p @search_by
		@search_by.each do |result|
			@result
			@groups_arr.push(result)
		end
		render "find"
	end

	def show
	end

end