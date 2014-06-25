def print_header
	puts "The students of my cohort at Makers Academy"
	puts "--------------"
end

def print(students)
	students.each do |student|
		puts "#{student[:name]}".center(25, "*") + "#{student[:hobby]}".center(25, "*") + "#{student[:cohort]}".center(25, "*")
	end
end

def print_footer(students)
	puts "Overall, we have #{students.length} great students"
end

def input_students
	puts "Please provide the following information"
	puts "To finish, just hit return twice"
	# create an empty array
	students = []
	# get the first name
	puts "Name:"
	name = gets.chomp
	# while the name is not empty, repeat this code
	while !name.empty? do
		# from now on only what's inside the while loop runs til it breaks
		puts "Hobby:"
		hobby = gets.chomp
		hobby = "boring" if hobby.empty?
		puts "Cohort:"
		cohort = gets.chomp
		cohort = "unavailable" if cohort.empty?
			# add the student hash to the array
			students << {:name => name, :cohort => cohort, :hobby => hobby}
			puts "Now we have #{students.length} students"
			# get another name from the user	
			puts "please enter another name or press enter to exit"
			name = gets.chomp
	end
# return the array of students
	students
end

students = input_students
print_header
print(students)
print_footer(students)
