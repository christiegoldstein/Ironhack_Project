class Course < ApplicationRecord
	has_many :user_courses
 	has_many :users, through: "user_courses"

 	# scope :by_name, -> { order(name: :asc) }
 	# scope :by_code, -> { order(code: :asc) }


end
