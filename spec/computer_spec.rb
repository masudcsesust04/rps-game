require 'rspec'
require_relative '../lib/computer'

RSpec.describe Computer do

  describe "initialize" do
    it "'Username' should be initialized" do
      expect(subject.name).not_to be_nil
    end
    
    it "'Move' should be initialized" do
      expect(subject.move).not_to be_nil
    end
  end
  
  describe "::CONSTANTS" do
    it "has a MOVES variable" do
      expect(described_class::MOVES).not_to be_nil
    end
    
    it "MOVE contains [R, P, S]" do
      expect(described_class::MOVES).to contain_exactly('R', 'P', 'S')
    end
  end
  
  describe ".ask_name" do
    it "should not return nil 'username'" do
      expect(described_class.ask_name).not_to be_nil
    end
    
    it "should not return empty 'username'" do
      expect(described_class.ask_name).not_to be_empty
    end
    
    it "should return string" do
      expect(described_class.ask_name).to be_an_instance_of(String)
    end
    
    it "should return string containing 'Computer'" do
      expect(described_class.ask_name).to include("Computer")
    end
  end
  
  describe ".ask_move" do
    it "should not return nil 'users move'" do
      expect(described_class.ask_move).not_to be_nil
    end
    
    it "should not return empty 'users move'" do
      expect(described_class.ask_move).not_to be_empty
    end
    
    it "should return character string" do
      expect(described_class.ask_move).to be_an_instance_of(String)
    end
  end

end

