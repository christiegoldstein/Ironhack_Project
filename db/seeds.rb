
#users
nick = User.create!(name: "Nick", last_name: "Smith", email: "nick@ufl.com", password: "hello123", 
		password_confirmation: "hello123", age: "19", university: "University of Florida", major: "Computer Engineering", minor: "Business")

sarah = User.create!(name: "Sarah", last_name: "Stevens", email: "sarah@ufl.com", password: "sarpup123", 
		password_confirmation: "sarpup123", age: "20", university: "University of Florida", major: "Computer Engineering", minor: "Psychology")

paul = User.create!(name: "Paul", last_name: "David", email: "paul@ufl.com", password: "paul123", 
		password_confirmation: "paul123", age: "18", university: "University of Florida", major: "Civil Engineering", minor: "Sales Engineering")

steven = User.create!(name: "Steven", last_name: "Cohen", email: "steven@ufl.edu", password: "crazysteve7", 
		password_confirmation: "crazysteve7", age: "19", university: "University of Florida", major: "Mechanical Engineering", minor: "Business")

caroline = User.create!(name: "Caroline", last_name: "Johnson", email: "caroline@ufl.edu", password: "caropie18", 
		password_confirmation: "caropie18", age: "20", university: "University of Florida", major: "Marketing", minor: "Computer Science")

#hobbies
basketball = Hobby.create!(name: "Basketball")
soccer = Hobby.create!(name: "Soccer")
music = Hobby.create!(name: "Listening to music")
movies = Hobby.create!(name: "Watching movies")
reading = Hobby.create!(name: "Reading")
baseball = Hobby.create!(name: "Baseball")
shopping = Hobby.create!(name: "Shopping")
dance = Hobby.create!(name: "Dance")


#courses
calculus1 = Course.create!(name: "Calculus 1", code: "MAC2311")
chemistry1 = Course.create!(name: "Chemistry 1", code: "CHM2048")
physics1 = Course.create!(name: "Physics 1 with Calculus", code: "PHY2048")
macro = Course.create!(name: "Principles of Macroeconomics", code: "ECO2013")

#study groups
calc_group1 = StudyGroup.create!(name: "Calc 1 Crew", meet_time: Time.now + 3.days, meet_place: "Marston Science Library, Second Floor",
		course_id: calculus1.id)
calc_group2 = StudyGroup.create!(name: "Calc is Cool", meet_time: Time.now + 4.days, meet_place: "Library West, Third Floor",
		course_id: calculus1.id)
chem_group1 = StudyGroup.create!(name: "Chem 1 Club", meet_time: Time.now + 5.days, meet_place: "Marston Science Library, Third Floor",
		course_id: chemistry1.id)
macro_group1 = StudyGroup.create!(name: "Macro Minions", meet_time: Time.now + 4.days, meet_place: "Library West, Third Floor",
		course_id: macro.id)

#user groups 
nick_group1 = UserGroup.create!(user_id: nick.id, study_group_id: calc_group1.id)
sarah_group1 = UserGroup.create!(user_id: sarah.id, study_group_id: calc_group1.id)
paul_group1 = UserGroup.create!(user_id: paul.id, study_group_id: chem_group1.id)
nick_group2 = UserGroup.create!(user_id: nick.id, study_group_id: chem_group1.id)
caroline_group1 = UserGroup.create!(user_id: caroline.id, study_group_id: macro_group1.id)
steven_group1 = UserGroup.create!(user_id: steven.id, study_group_id: calc_group2.id)


#user hobbies
nick_hobby1 = UserHobby.create!(user_id: nick.id, hobby_id: basketball.id)
nick_hobby2 = UserHobby.create!(user_id: nick.id, hobby_id: soccer.id)
sarah_hobby1 = UserHobby.create!(user_id: sarah.id, hobby_id: soccer.id)
sarah_hobby2 = UserHobby.create!(user_id: sarah.id, hobby_id: movies.id)
paul_hobby1 = UserHobby.create!(user_id: paul.id, hobby_id: reading.id)
paul_hobby2 = UserHobby.create!(user_id: paul.id, hobby_id: basketball.id)
caroline_hobby1 = UserHobby.create!(user_id: caroline.id, hobby_id: music.id)
caroline_hobby2 = UserHobby.create!(user_id: caroline.id, hobby_id: dance.id)
steven_hobby1 = UserHobby.create!(user_id: steven.id, hobby_id: music.id)
steven_hobby2 = UserHobby.create!(user_id: steven.id, hobby_id: basketball.id)


#user course
nick_course1 = UserCourse.create!(user_id:nick.id, course_id: calculus1.id)
nick_course2 = UserCourse.create!(user_id:nick.id, course_id: chemistry1.id)
sarah_course1 = UserCourse.create!(user_id:sarah.id, course_id: calculus1.id)
sarah_course2 = UserCourse.create!(user_id:sarah.id, course_id: chemistry1.id)
paul_course1 = UserCourse.create!(user_id: paul.id, course_id: chemistry1.id)
paul_course2 = UserCourse.create!(user_id: paul.id, course_id: physics1.id)
caroline_course1 = UserCourse.create!(user_id: caroline.id, course_id: macro.id)
caroline_course2 = UserCourse.create!(user_id: caroline.id, course_id: calculus1.id)
steven_course1 = UserCourse.create!(user_id: steven.id, course_id: calculus1.id)



