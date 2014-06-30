def prints_header
	puts "This is the MA student directory June"
end

def print_seperator
	puts "----"
end

def print_students
	puts student_names.join(', ')
end

def student_names
	students.map{|student| student[:name]}
end

def students
	[
	 {name: "Dr. Hannibal Lecter"}, 
	 {name: "Darth Vader"},
	 {name: "Nurse Ratched"},
	 {name: "Michael Corleone"},
	 {name: "Alex De Large"},
	 {name: "The Alien"},
	 {name: "Terminator"},
	 {name: "Freddy Kruger"},
	 {name: "The Joker"}
	]
end