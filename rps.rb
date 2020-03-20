require_relative './lib/human'
require_relative './lib/computer'
require_relative './lib/game'

class Rps
  
  attr_accessor :continue
  
  def initialize()
    puts "Welocome, to the Rock Paper Scissors Game!"
    @continue = true
  end
  
  def start
    
    round = 0

    while(@continue) do

      round = round + 1

      puts "------------------------------ Round ##{round} --------------------------------"
      puts "Do you want to play Player vs Computer?(Y/n)"
      
      game = Game.new

      human_vs_computer = game.ask_input?()
      winner = ''

      if human_vs_computer
        winner = game.human_vs_computer()
      else
        winner = game.computer_vs_computer()
      end
      
      puts "Result: #{winner}"
      puts "------------------------------ End of Round ##{round} --------------------------------"
      
      @continue = game.play_again?()
    end
    
    puts "Thank you!"
  end
end

