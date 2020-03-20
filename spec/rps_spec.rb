require 'rspec'
require_relative '../rps'

RSpec.describe Rps do

  describe "initialize" do
    it "continue is true when initialized" do
      expect(subject.continue).to be_truthy
    end
    
    it "continue can't be nil when initialized" do
      expect(subject.continue).not_to be_nil
    end
  end
end

