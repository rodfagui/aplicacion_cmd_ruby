require_relative 'insercion'

include TextInsertion

class Adivinalo
	attr_reader :score
	
	def initialize(question_hash)
	  @question_hash = question_hash
	  @score = 0
	end

	def start
		puts "Bienvenido al juego. Contesta las preguntas con el menor numero de intentos para ganar mas puntos. Buena suerte"
	end

	def play
		@question_hash.keys.each_with_index do |key, index|
			puts "Pregunta #{index+1}"
			puts key
			print "Respuesta: "
			respuesta = gets.chomp
			
			until respuesta == @question_hash[key]
				@score -= 10
				puts "Respuesta incorrecta :(. Ingrese otra respuesta"
				print "Respuesta: "
			  respuesta = gets.chomp
			end
			
			puts "Respuesta correcta :)"
			@score += 10

			puts  	
		end		
	end

	def finish
		puts "Juego finalizado"
		puts "Tu puntaje final fue: #{@score}"
	end
end