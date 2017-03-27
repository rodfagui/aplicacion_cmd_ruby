require_relative 'modules/adivinalo'

my_game = Adivinalo.new(question_hash("preguntas.txt"))
puts
puts "----------------------------------------------------Adivinalo----------------------------------------------------"
puts
my_game.start
puts
puts "-----------------------------------------------------------------------------------------------------------------"
puts
my_game.play
my_game.finish