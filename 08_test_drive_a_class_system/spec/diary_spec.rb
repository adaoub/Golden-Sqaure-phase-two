require "diary"

describe Diary do
  it "has an empty list of entires" do
    diary = Diary.new
    expect(diary.all).to eq []
  end

  it "returns word count as zero" do
    diary = Diary.new
    expect(diary.count_words).to eq 0
  end

  it "returns reading time as zero" do
    diary = Diary.new
    expect(diary.reading_time(200)).to eq 0
  end

  it "returns nill for best enrty reading time" do
    diary = Diary.new
    expect(diary.find_best_entry_for_reading_time(200, 1)).to eq nil
  end
end
