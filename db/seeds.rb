
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

min = User.create!(name: "Min", last_name: "Watson", email: "min@ufl.edu", password: "min4567", 
		password_confirmation: "min4567", age: "20", university: "University of Florida", major: "Biology", minor: "Earth Science")

daniel = User.create!(name: "Daniel", last_name: "Paul", email: "daniel@ufl.edu", password: "danieldaniel", 
		password_confirmation: "danieldaniel", age: "21", university: "University of Florida", major: "Chemistry", minor: "Biology")

josh = User.create!(name: "Josh", last_name: "Davis", email: "josh@ufl.edu", password: "joshjosh", 
		password_confirmation: "joshjosh", age: "19", university: "University of Florida", major: "Environmental Engineering", minor: "Earth Science")


#hobbies
basketball = Hobby.create!(name: "Basketball")
soccer = Hobby.create!(name: "Soccer")
music = Hobby.create!(name: "Listening to music")
movies = Hobby.create!(name: "Watching movies")
reading = Hobby.create!(name: "Reading")
baseball = Hobby.create!(name: "Baseball")
shopping = Hobby.create!(name: "Shopping")
dancing = Hobby.create!(name: "Dancing")
singing= Hobby.create!(name: "Singing")
coding= Hobby.create!(name: "Coding")
drawing= Hobby.create!(name: "Drawing")

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
calc_group3 = StudyGroup.create!(name: "Calc Cohort", meet_time: Time.now + 4.days, meet_place: "Library West, Fourth Floor",
		course_id: calculus1.id)
chem_group1 = StudyGroup.create!(name: "Chem 1 Club", meet_time: Time.now + 5.days, meet_place: "Marston Science Library, Third Floor",
		course_id: chemistry1.id)
chem_group2 = StudyGroup.create!(name: "Chem 1 Classmates", meet_time: Time.now + 5.days, meet_place: "Marston Science Library, Fourth Floor",
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
min_group1 = UserGroup.create!(user_id: min.id, study_group_id: chem_group2.id)
daniel_group1 = UserGroup.create!(user_id: daniel.id, study_group_id: chem_group2.id)
josh_group1 = UserGroup.create!(user_id: josh.id, study_group_id: calc_group1.id)


#user hobbies
nick_hobby = UserHobby.create!(user_id: nick.id, hobby_id: basketball.id)
sarah_hobby = UserHobby.create!(user_id: sarah.id, hobby_id: soccer.id)
paul_hobby = UserHobby.create!(user_id: paul.id, hobby_id: reading.id)
caroline_hobby = UserHobby.create!(user_id: caroline.id, hobby_id: music.id)
steven_hobby = UserHobby.create!(user_id: steven.id, hobby_id: movies.id)
min_hobby = UserHobby.create!(user_id: min.id, hobby_id: dancing.id)
daniel_hobby = UserHobby.create!(user_id: daniel.id, hobby_id: coding.id)
josh_hobby = UserHobby.create!(user_id: josh.id, hobby_id: drawing.id)

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
min_course1 = UserCourse.create!(user_id: steven.id, course_id: chemistry1.id)
daniel_course1 = UserCourse.create!(user_id: steven.id, course_id: chemistry1.id)
josh_course1 = UserCourse.create!(user_id: steven.id, course_id: calculus1.id)


