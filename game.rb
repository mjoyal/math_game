class GameState
  attr_accessor :over, :player1_turn
  def initialize ()
    @over = false
    @player1_turn = true
  end

  def end_game()
    @over = true
    puts "Game over!"
  end

  def choose_question(questions)
    random = rand() * 5
    return questions[random.floor()]
  end

  def switch_turn()
    @player1_turn = false
  end

  def validate(player_answer, question) 
    puts question
    player_answer == question[:answer]
  end
end