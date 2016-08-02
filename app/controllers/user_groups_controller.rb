class UserGroupsController < ApplicationController
	def create
		@user = current_user
		@group_id = params[:group_id].to_i
		p @group_id
		UserGroup.create!(user_id: @user.id, study_group_id: @group_id) 
		redirect_to '/users/profile'
	end
end
