require 'rspec'
require_relative '../lib/human'

RSpec.describe Human do

  describe "initialize" do
    it "'Username' should be nil when initialized" do
      expect(subject.name).to be_nil
    end
    
    it "'Move' should be nil when initialized" do
      expect(subject.move).to be_nil
    end
  end
  
  describe "#ask_name" do
    it "should ask 'user name' to enter" do
      allow(subject).to receive(:gets).and_return('Masud')
      expect(subject.ask_name).to eq('Masud')
    end
    
    it "username should not be nil" do
      allow(subject).to receive(:gets).and_return('Masud')
      expect(subject.ask_name).not_to be_nil
    end
    
    it "username to be a string" do
      allow(subject).to receive(:gets).and_return('Masud')
      expect(subject.ask_name).to be_an_instance_of(String)
    end
  end
  
  describe "#ask_move" do
    it "should ask 'user move' to enter" do
      allow(subject).to receive(:gets).and_return('R')
      expect(subject.ask_move).to eq('R')
    end
    
    it "users move should not be nil" do
      allow(subject).to receive(:gets).and_return('P')
      expect(subject.ask_move).not_to be_nil
    end
    
    it "users move to be a string" do
      allow(subject).to receive(:gets).and_return('S')
      expect(subject.ask_move).to be_an_instance_of(String)
    end
    
    it "User moves contains R or P or S" do
      allow(subject).to receive(:gets).and_return('S')
      expect('RPS').to include(subject.ask_move)
    end
  end

end

