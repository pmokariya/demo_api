@semesters.each{ |semester| 
	json.set! semester.id, semester.name 
}