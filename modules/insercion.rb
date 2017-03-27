module TextInsertion
	def question_hash(filename)
		questions_data_base = {}
		File.foreach(filename) do |line|
		  question, answer = line.chomp.split(' : ')
		  questions_data_base[question] = answer
		end
		questions_data_base
	end
end

