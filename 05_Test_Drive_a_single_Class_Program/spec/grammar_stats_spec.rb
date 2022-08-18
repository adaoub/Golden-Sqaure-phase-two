require "grammar_stats"

describe GrammarStats do
  it "returns true when text starts with capital and ends with full stop " do
    grammar = GrammarStats.new
    expect(grammar.check("Hello world.")).to eq true
  end

  it "returns true when text starts with capital and ends with exclamation mark " do
    grammar = GrammarStats.new
    expect(grammar.check("Hello world!")).to eq true
  end

  it "returns false when text does not start with capital" do
    grammar = GrammarStats.new
    expect(grammar.check("hello world!")).to eq false
  end

  it "returns false when text does not end with puncuation mark" do
    grammar = GrammarStats.new
    expect(grammar.check("hello world")).to eq false
  end

  describe "#percetnage_good" do
    it "return percentage of texts checked that passed" do
      grammar = GrammarStats.new
      grammar.check("Hello Worlds.")
      expect(grammar.percentage_good).to eq 100
    end

    it "return percentage of texts checked that passed" do
      grammar = GrammarStats.new
      grammar.check("Hello Worlds.")
      grammar.check("Hello Worlds.")
      expect(grammar.percentage_good).to eq 100
    end

    it "return percentage of texts checked that passed" do
      grammar = GrammarStats.new
      grammar.check("Hello Worlds.")

      grammar.check("Hello Worlds.")
      grammar.check("Hello Worlds")
      expect(grammar.percentage_good).to eq 67
    end
  end
end
