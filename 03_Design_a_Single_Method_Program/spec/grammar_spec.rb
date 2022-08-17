require "grammar"

describe " grammar method checker" do
  it "returns false" do
    result = grammar("")
    expect(result).to eq false
  end

  it "returns true" do
    result = grammar("My name is Abdullah.")
    expect(result).to eq true
  end

  it "returns false" do
    result = grammar("my name is Abdullah.")
    expect(result).to eq false
  end

  it "returns false" do
    result = grammar("My name is Abdullah")
    expect(result).to eq false
  end

  it "returns true" do
    result = grammar("Hello, how are you?")
    expect(result).to eq true
  end
  it "returns true" do
    result = grammar("Hello, my name is!")
    expect(result).to eq true
  end
end
