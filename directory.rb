students = [
{:name => "Jamie", :cohort => :June},
{:name => "Peter", :cohort => :June},
{:name => "Igor", :cohort => :June},
{:name => "Chloe", :cohort => :June},
{:name => "Nic", :cohort => :June},
{:name => "Toan", :cohort => :June},
{:name => "Iona", :cohort => :June},
{:name => "Joe", :cohort => :June},
{:name => "Tom", :cohort => :June},
{:name => "Charlotte", :cohort => :June},
{:name => "Lisa", :cohort => :June},
{:name => "Zoe", :cohort => :June},
{:name => "Eddie", :cohort => :June},
{:name => "Charlie", :cohort => :June},
{:name => "Jean", :cohort => :June},
{:name => "Hannah", :cohort => :June},
{:name => "Catherine", :cohort => :June},
{:name => "Michael", :cohort => :June},
{:name => "David", :cohort => :June},
{:name => "Talal", :cohort => :June},
{:name => "Marco", :cohort => :June},
{:name => "Zana", :cohort => :June},
{:name => "Jenny", :cohort => :June},
{:name => "Nicola", :cohort => :June},
{:name => "Jeremy", :cohort => :June}
]

def print_header
	puts "The students of my cohort at Makers Academy"
	puts "--------------"
end

def print(students)
	students.each do |student|
		puts "#{student[:name]} (#{student[:cohort]} cohort)"
	end
end

def print_footer(names)
	puts "Overall, we have #{names.length} great students"
end

def input_students
	puts "Please enter the names of the students"
	puts "To finish, just hit return twice"
	# create an empty array
	students = []
	# get the first name
	name = gets.chomp
	# while the name is not empty, repeat this code
	while !name.empty? do
		# add the student hash to the array
		students << {:name => name, :cohort => :June}
		puts "Now we have #{students.length} students"
		# get another name from the user
		name = gets.chomp
	end
	# return the array of students
	students
end

students = input_students
print_header
print(students)
print_footer(students)

