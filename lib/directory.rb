# def students
# 	[
# 	 {name: "Dr. Hannibal Lecter", cohort: "June"}, 
# 	 {name: "Darth Vader", cohort: "January"},
# 	 {name: "Nurse Ratched", cohort: "June"},
# 	 {name: "Michael Corleone", cohort: "August"},
# 	 {name: "Alex De Large", cohort: "June"},
# 	 {name: "The Alien", cohort: "June"},
# 	 {name: "Terminator", cohort: "July"},
# 	 {name: "Freddy Kruger", cohort: "June"},
# 	 {name: "Joe", cohort: "June"},
# 	 {name: "Peter", cohort: "June"},
# 	 {name: "Nikesh", cohort: "June"},
# 	 {name: "The Joker", cohort: "June"}
# 	]
# end

def students
	@students ||= []
end

def print_header
	puts "This is the MA student directory June"
end

def print_menu
	puts "------MENU-------"
	puts "1. Input the students"
	puts "2. Show the students"
	puts "3. Save the list to students.csv"
	puts "4. Load the list from students.csv"
	puts "9. Exit"
	puts "--------------------"
end


def print_input_name
	puts "Please enter your name"
end

def user_input
	name = gets.chomp
		while !name.empty? do
			@students << name
			name = gets.chomp
		end
		@students
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
	students_count = students.count{ |student| students.length }
end


require 'csv'

def student_to_csv(student)
	student.values
end

def save(students)
	CSV.open("./students.csv", "w") do |csv|
		students.each do |student|
			csv << student_to_csv(student)
		end
	end		
end

def load_csv
	file = CSV.open("./students.csv", "r")


end 

print_header
print_menu
print_input_name
user_input
print_students
print_footer