require 'directory'

#context 'This is how the program works' do

	describe 'The student directory contains the following functions' do
		let(:student) { { name: 'Joe', cohort: 'June' } }
			it 'prints the header' do
				header = 'This is the MA student directory June'
	      expect(self).to receive(:puts).with(header)
	      print_header
			end		

			it 'can print the menu' do
				menu = [
				'------MENU-------',
				'1. Input the students',
				"2. Show the students",
				"3. Save the list to students.csv",
				"4. Load the list from students.csv",
				"9. Exit",
				"--------------------"
				]

				menu.each { |line| expect(self).to receive(:puts).with(line)}

				print_menu
			end

			it 'asks for user input' do
				input_name = 'Please enter your name'
				expect(self).to receive(:puts).with(input_name)
				print_input_name
			end

			it 'can take user input' do
				expect(self).to receive(:gets).and_return("pete")
				user_input
			end

			# it 'adds the user input to the students list' do
			# 	expect(user_input).to match 
			# end

			it 'tells us the names of the students' do
				names = students.map{|student| student[:name]}
				expect(student_names).to eq names
			end

			it 'can print student names with cohorts' do
				expect(self).to receive(:puts).with(student_names.join(', '))
				print_students
			end

			it 'tells us the cohort of the students' do
				cohort = students.map{|student| student[:cohort]}
				expect(student_cohort).to eq cohort
			end


			it 'prints the footer' do
				footer = 'Overall we have ' + students.length.to_s + ' great students'
				expect(self).to receive(:puts).with(footer)
				print_footer
			end

			it 'counts the students' do
				count = students_count{|student| students.length}
				expect(students.length). to eq count
			end


			
			it 'transforms a student into csv' do
				expect(student_to_csv(student)).to eq ['Joe', 'June']
			end

			it 'saves the students' do
				students = [student]
				csv = double # double is fake file, like a stunt double.
				expect(csv).to receive(:<<).with(student_to_csv(student))
				expect(CSV).to receive(:open).with('./students.csv', 'w').and_yield(csv)
				save(students)

			end

			it 'loads the students' do
				students = [student]
				expect(CSV).to receive(:open).with("./students.csv", "r")
				load_csv
			end
		



	end

#end