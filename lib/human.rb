class Human
  
  attr_accessor :name, :move
  
  def initialize
  end
  
  def ask_name
    puts "Enter your name: "
    @name = gets.chomp
  end
  
  def ask_move
    puts "Enter your choice(R=Rock, P=Paper, S=Scissors):"
    @move = gets.chomp
  end
  
end

