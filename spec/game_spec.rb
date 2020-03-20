require 'rspec'
require_relative '../lib/human'
require_relative '../lib/computer'
require_relative '../lib/game'

RSpec.describe Game do

  describe "::CONSTANTS" do

    context 'ROCK' do
      it "is defined and not nil" do
        expect(described_class::ROCK).not_to be_nil
      end

      it "is initialized by 'R'" do
        expect(described_class::ROCK).to eq('R')
      end
    end

    context "PAPER" do
      it "is defined and not nil" do
        expect(described_class::PAPER).not_to be_nil
      end

      it "is initialized by 'P'" do
        expect(described_class::PAPER).to eq('P')
      end
    end

    context "SCISSORS" do
      it "is defined and not nil" do
        expect(described_class::SCISSORS).not_to be_nil
      end

      it "is initialized by 'S'" do
        expect(described_class::SCISSORS).to eq('S')
      end
    end
  end

  describe "#ask_input?" do
    context 'returns' do 
      it 'true' do
        allow(subject).to receive(:ask_input?).and_return(true)
      end

      it 'false' do
        allow(subject).to receive(:ask_input?).and_return(false)
      end
    end  
  end

  describe "#play_again?" do
    context 'returns' do
      it 'true' do
        allow(subject).to receive(:play_again?).and_return(true)
      end

      it 'false' do
        allow(subject).to receive(:play_again?).and_return(false)
      end
    end
  end

  describe ".display_players_move" do
    it "players move is 'R'" do
      player = Human.new
      player.name = 'Masud'
      player.move = 'R'
      expect(described_class.display_players_move(player)).to eq("#{player.name} selected ROCK")
    end

    it "players move is 'P'" do
      player = Human.new
      player.name = 'Masud'
      player.move = 'P'
      expect(described_class.display_players_move(player)).to eq("#{player.name} selected PAPER")
    end

    it "players move is 'R'" do
      player = Human.new
      player.name = 'Masud'
      player.move = 'S'
      expect(described_class.display_players_move(player)).to eq("#{player.name} selected SCISSORS")
    end

    it "player invalid move" do
      player = Human.new
      expect(described_class.display_players_move(player)).to eq("Sorry, Not a valid move!")
    end
  end 

  describe ".compare_moves" do

    it "returns interger value" do
      expect(described_class.compare_moves('R', 'R')).to be_an_instance_of(Integer)
      expect(described_class.compare_moves('R', 'S')).to be_an_instance_of(Integer)
      expect(described_class.compare_moves('P', 'R')).to be_an_instance_of(Integer)
      expect(described_class.compare_moves('PSP', 'R')).to be_an_instance_of(Integer)
    end

    it "returns 0" do
      expect(described_class.compare_moves('R', 'R')).to eq(0)
    end

    it "returns 1" do
      expect(described_class.compare_moves('R', 'S')).to eq(1)
    end

    it "returns 2" do
      expect(described_class.compare_moves('R', 'P')).to eq(2)
    end

    it "returns -1" do
      expect(described_class.compare_moves('RSP', 'P')).to eq(-1)
    end
  end

  describe '#winner' do
    it "is a tie" do
      player_1 = Human.new
      player_1.name = 'Masud'
      player_1.move = 'R'

      player_2 = Human.new
      player_2.name = 'Rana'
      player_2.move = 'R'

      expect(described_class.new.winner(player_1, player_2)).to eq("It's a Tie!")
    end

    it "first player wins" do
      player_1 = Human.new
      player_1.name = 'Masud'
      player_1.move = 'R'

      player_2 = Human.new
      player_2.name = 'Rana'
      player_2.move = 'S'

      expect(described_class.new.winner(player_1, player_2)).to eq("Winner is #{player_1.name}. #{player_1.name} beats #{player_2.name}.")
    end

    it "second player wins" do
      player_1 = Human.new
      player_1.name = 'Masud'
      player_1.move = 'R'

      player_2 = Human.new
      player_2.name = 'Rana'
      player_2.move = 'P'

      expect(described_class.new.winner(player_1, player_2)).to eq("Winner is #{player_2.name}. #{player_2.name} beats #{player_1.name}.")
    end

    it 'no, due to invalid move' do
      player_1 = Human.new
      player_1.name = 'Masud'
      player_1.move = 'Rnp'

      player_2 = Human.new
      player_2.name = 'Rana'
      player_2.move = 'P'

      expect(described_class.new.winner(player_1, player_2)).to eq("No Winner, due to the invalid move.")
    end
  end

end

