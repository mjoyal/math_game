class Player 
  # keep score 
  # choose random question && print question 
  attr_accessor :lives
  def initialize ()
    @lives = 3
  end

  def lose_life
    @lives -= 1
  end
 end
 