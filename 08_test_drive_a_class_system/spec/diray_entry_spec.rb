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
end
