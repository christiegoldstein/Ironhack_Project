class StudyGroup < ApplicationRecord
	has_many :user_groups
 	has_many :users, through: "user_groups"


 	def majors(study_groups)
 		users_arr = []
 		study_groups.each do |study_group|
 			p users = UserGroup.where(study_group_id: study_group.id)
 			p "hi"
 			users.each do |user|
 				p User.find_by(id: user.user_id)
 				users_arr.push(User.find_by(id: user.user_id))
 			end
 		end
 		return users_arr
 	end

 	def hobbies(study_groups)
 		hobbies_arr = []
 		study_groups.each do |study_group|
 			users = UserGroup.where(study_group_id: study_group.id)
 			users.each do |user|
 				hobbies_arr.push(UserHobby.find_by(user_id: user.user_id))
 			end
 		end
 		p "hi"
 		p hobbies_arr
 		return hobbies_arr
	 	
 	end
end
