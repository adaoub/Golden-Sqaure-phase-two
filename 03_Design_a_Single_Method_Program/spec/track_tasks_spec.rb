require "track_tasks"

describe "track todos" do
  it "returns false" do
    result = track_tasks("")
    expect(result).to eq false
  end

  it "returns true" do
    result = track_tasks("#TODO take bins out")
    expect(result).to eq true
  end

  it "returns false" do
    result = track_tasks("take bins out")
    expect(result).to eq false
  end

  it "returns false" do
    expect { track_tasks(1283) }.to raise_error "This is not a string"
  end
end
