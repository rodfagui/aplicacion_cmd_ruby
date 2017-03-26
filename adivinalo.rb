def question_hash(filename)
	questions_data_base = {}
	File.foreach(filename) do |line|
	  question, answer = line.chomp.split(' : ')
	  questions_data_base[question] = answer
	end
	questions_data_base
end

class Adivinalo
	attr_reader :score
	
	def initialize(question_hash)
	  @question_hash = question_hash
	  @score = 0
	end

	def start
		puts "Bienvenido al juego. Contesta las preguntas con el menor numero de intentos para ganar mas puntos. Buena suerte."
	end

	def play
		@question_hash.keys.each_with_index do |key, index|
			puts "Pregunta #{index+1}"
			puts key
			print "Respuesta: "
			respuesta = gets.chomp
			
			until respuesta == @question_hash[key]
				@score -= 10
				puts "Respuesta incorrecta. Ingrese otra respuesta."
				print "Respuesta: "
			  respuesta = gets.chomp
			end

			if respuesta == @question_hash[key]
				puts "Respuesta correcta"
				@score += 10  	
			end
		end		
	end

	def finish
		puts "El puntaje final fue: #{@score}"
	end
end

my_game = Adivinalo.new(question_hash("preguntas.txt"))
my_game.start
my_game.play
my_game.finish
