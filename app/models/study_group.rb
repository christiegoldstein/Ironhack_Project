class StudyGroup < ApplicationRecord
	has_many :user_groups
 	has_many :users, through: "user_groups"


 	def majors(study_groups)
 		users_arr = []
 		study_groups.each do |study_group|
 			users = UserGroup.where(study_group_id: study_group.id)
 			if users.length > 1 
 				users.each do |user|
 					users_arr.push(User.find_by(id: user.user_id))
 				end
 			else 
 				users_arr.push(User.find_by(id: users[0].user_id))
 			end
 		end
 		return users_arr
	 	
 	end
end
