require 'directory'

context 'This is how the program works' do

	describe 'The student direcory contains the following functions' do
		it 'prints the header' do
			header = 'This is the MA student directory June'
      expect(self).to receive(:puts).with(header)
      prints_header
		end		

		it 'can print a seperator' do
			seperator = "----"
			expect(self).to receive(:puts).with(seperator)
			print_seperator
		end

		it 'tells us the names of the students' do
			names = students.map{|student| student[:name]}
			expect(student_names).to eq names
		end

		it 'can print student names' do
			expect(self).to receive(:puts).with(student_names.join(', '))
			print_students
		end	

	end

end