@students.each{ |student| 
	json.set! student.id, student.name 
}
