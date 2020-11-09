require './game'
require './player'
require './questions'


game = GameState.new
player1 = Player.new
player2 = Player.new

def player_turn(player, question) 
  player_answer = gets.chomp.to_i
  if game.validate(player_answer, question)
   puts "#{player}: Correct!"
  else 
   puts "#{player}: Seriously? No!"
  end
end

puts 'Start the game!'
while game.over == false do
  current_question = game.choose_question(@questions)
  if game.player1_turn 
   puts "Player 1: #{current_question[:question]}"
   player_turn('Player 1', current_question)
  #  game.end_game
  else 
   puts "Player 2: #{current_question[:question]}"
  end 
end
