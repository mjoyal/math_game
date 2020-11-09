require './game'
require './player'
require './questions'


game = GameState.new
player1 = Player.new('Player 1')
player2 = Player.new('Player 2')


def update_score(curr_player, other_player, game) 
  curr_player.lose_life
  puts "------ SCORE ------"
  puts "#{curr_player.name}: #{curr_player.lives}"
  puts "#{other_player.name}: #{other_player.lives}"
  if  curr_player.lives == 0 
    game.end_game
  else 
    puts "------ NEW TURN ------"
  end
end

def player_turn(curr_player, other_player, question, game) 
  player_answer = gets.chomp.to_i
  if game.validate(player_answer, question)
   puts "#{curr_player.name}: Correct!"
  else 
   puts "#{curr_player.name}: Seriously? No!"
   update_score(curr_player, other_player, game)
  end
  game.switch_turn
end



puts 'Start the game!'
while game.over == false do
  current_question = game.choose_question(@questions)
  if game.player1_turn 
   puts "Player 1: #{current_question[:question]}"
   player_turn(player1, player2, current_question, game)
  else 
   puts "Player 2: #{current_question[:question]}"
   player_turn(player2, player1, current_question, game)
  end 
end
