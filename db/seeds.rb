# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
6.times do |s|
	Semester.create(name: 'Semester',credits: 1,start_date: Date.today, end_date: Date.today - 180)
end

10.times do |s|
	Student.create(name: 'student',age: 23,dob: Date.today - 23, semester_id: 1,description: "description will be here")
end
