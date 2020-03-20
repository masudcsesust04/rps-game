class Computer
  
  MOVES = ['R', 'P', 'S']
  
  attr_accessor :name, :move
  
  def initialize
    @name = Computer.ask_name()
    @move =  Computer.ask_move()
  end
  
  def self.ask_name
    str = (0...4).map { ('a'..'z').to_a[rand(26)] }.join
    name = "Computer-#{str}"
  end
  
  def self.ask_move
    index = rand(0..2)

    MOVES[index]
  end
end

