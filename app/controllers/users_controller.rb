class UsersController < ApplicationController
	before_action :authenticate_user!, only: :show

	def home
		render "home"
	end

	def profile
		@user = User.find_by(id: params[:id])
		render "profile"
	end

	def edit
	end

	def update
	end
end
