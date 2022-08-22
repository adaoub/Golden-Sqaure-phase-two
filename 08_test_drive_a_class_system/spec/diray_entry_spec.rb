require "diary_entry"

describe DiaryEntry do
  it " returns the title and contents as strings" do
    diary_entry = DiaryEntry.new("title", "contents")
    expect(diary_entry.contents).to eq "contents"
  end

  it "returns the number of words in that entry" do
    diary_entry = DiaryEntry.new("title", "Today was a great day.")
    expect(diary_entry.count_words).to eq 5
  end

  it "returns the estimated number of minutes required to read the contennets given a wpm" do
    diary_entry = DiaryEntry.new("title", "contents " * 1000)
    expect(diary_entry.reading_time(200)).to eq 5
  end

  describe "#reading_chunk" do
    it "returns all the contents if there are enough minutes" do
      diary_entry = DiaryEntry.new("title", "word1 word2 word3")
      expect(diary_entry.reading_chunk(3, 1)).to eq ("word1 word2 word3")
    end

    it "returns first two words when given a wpm of 2 and minutes of 1. when called again it returns the remaing last word" do
      diary_entry = DiaryEntry.new("title", "word1 word2 word3")
      diary_entry.reading_chunk(2, 1)
      chunk = diary_entry.reading_chunk(1, 1)
      expect(chunk).to eq ("word3")
    end
    it "restarts after reading whole contents" do
      diary_entry = DiaryEntry.new("title", "word1 word2 word3")
      diary_entry.reading_chunk(2, 1)
      diary_entry.reading_chunk(1, 1)
      chunk = diary_entry.reading_chunk(2, 1)
      expect(chunk).to eq ("word1 word2")
    end
  end
end
