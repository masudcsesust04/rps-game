class Game
  
  ROCK = 'R'
  PAPER = 'P'
  SCISSORS = 'S'
  
  def initialize
  end
  
  def ask_input?
    input = gets

    input.chomp() == "Y" || input.chomp() == "y" || input == "\n" ? true : false
  end
  
  def play_again?
    puts "Do you want to play again?(Y/n)"
    
    Game.new.ask_input?()
  end

  def computer_vs_computer
    puts "Computer vs Computer"
        
    player_1 = Computer.new
    player_2 = Computer.new
    
    puts "#{player_1.name} is playing against #{player_2.name}" 
    puts "#{Game.display_players_move(player_1)}"
    puts "#{Game.display_players_move(player_2)}"
    
    game = Game.new
    winner = game.winner(player_1, player_2)

    return winner
  end
  
  def human_vs_computer
    puts "Human vs Computer"
        
    human = Human.new
    human.ask_name()
    human.ask_move()
   
    computer = Computer.new
    
    puts "Human(#{human.name}) is playing against #{computer.name}"
    puts "#{Game.display_players_move(human)}"
    puts "#{Game.display_players_move(computer)}"
    
    game = Game.new
    winner = game.winner(human, computer)

    return winner
  end

  def winner(player_1, player_2)
  
    result = Game.compare_moves(player_1.move, player_2.move)

    case result
    when 0
      return "It's a Tie!"
    when 1
      return "Winner is #{player_1.name}. #{player_1.name} beats #{player_2.name}."
    when 2
      return "Winner is #{player_2.name}. #{player_2.name} beats #{player_1.name}."
    when -1
      return "No Winner, due to the invalid move."
    end
  end
  
  def self.display_players_move(player)
    players_move = ''

    case player.move
    when ROCK
      players_move = "#{player.name} selected ROCK"
    when PAPER
      players_move = "#{player.name} selected PAPER"
    when SCISSORS
      players_move = "#{player.name} selected SCISSORS"
    else
      players_move = "Sorry, Not a valid move!"
    end

    return players_move
  end
  
  def self.compare_moves(player_1_move, player_2_move)
  
    if (player_1_move == player_2_move)
      return 0
    end
    
    case player_1_move
    when ROCK
      return player_2_move == SCISSORS ? 1 : 2
    when PAPER
      return player_2_move == ROCK ? 1 : 2
    when SCISSORS
      return player_2_move == PAPER ? 1 : 2
    end
    
    return -1
  end
  
end

