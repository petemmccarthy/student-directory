def students
	[
	 {name: "Dr. Hannibal Lecter", cohort: "June"}, 
	 {name: "Darth Vader", cohort: "January"},
	 {name: "Nurse Ratched", cohort: "June"},
	 {name: "Michael Corleone", cohort: "August"},
	 {name: "Alex De Large", cohort: "June"},
	 {name: "The Alien", cohort: "June"},
	 {name: "Terminator", cohort: "July"},
	 {name: "Freddy Kruger", cohort: "June"},
	 {name: "The Joker", cohort: "June"}
	]
end

def print_header
	puts "This is the MA student directory June"
end

def print_seperator
	puts "----"
end

def print_footer
	puts "Overall we have #{students.length} great students"
end

def print_students
	puts student_names.join(', ')
end

def student_names
	students.map{|student| student[:name]}
end

def student_cohort
	students.map{|student| student[:cohort]}
end	

def students_count
	students_count = 9
	#students.count{|student| students.length}
end