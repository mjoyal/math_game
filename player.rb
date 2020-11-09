class Player 
  attr_accessor :lives, :name
  def initialize (n)
    @lives = 3
    @name = n
  end

  def lose_life
    @lives -= 1
  end
 end
 