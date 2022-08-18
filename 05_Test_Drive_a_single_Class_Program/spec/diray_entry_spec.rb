require "diary_entry"

describe DiaryEntry do
  it "initilaises with titile and contenets" do
    diary_entry = DiaryEntry.new("title", "contents")
    expect(diary_entry.contents).to eq "contents"
  end

  describe "count_words" do
    it "return number of words in contents as integrer" do
      diary_entry = DiaryEntry.new("title", "contents as example")
      expect(diary_entry.count_words).to eq 3
    end
  end

  describe "#reading_time" do
    it "returns an integer for estimated reading time in mins of contents given 200wpm" do
      diary_entry = DiaryEntry.new("title", "words " * 550)
      expect(diary_entry.reading_time(200)).to eq 3
    end

    it "fails if wpm = 0" do
      diary_entry = DiaryEntry.new("title", "words words words")
      expect { diary_entry.reading_time(0) }.to raise_error "wpm can not be zero"
    end
  end

  describe "#reading_chunk" do
    it "reyurn all contents that could be read given minutes avaibale and wpm speed" do
      diary_entry = DiaryEntry.new("title", "words words words")
      expect(diary_entry.reading_chunk(3, 1)).to eq "words words words"
    end

    it "reyurn chunk of contents that could be read given minutes avaibale and wpm speed" do
      diary_entry = DiaryEntry.new("title", "words words words")
      expect(diary_entry.reading_chunk(2, 1)).to eq "words words"
    end

    it "return next chunk of remaing words if called again" do
      diary_entry = DiaryEntry.new("title", "words words words")
      diary_entry.reading_chunk(2, 1)
      chunk = diary_entry.reading_chunk(2, 1)
      expect(chunk).to eq "words"
    end

    it "restarts after reading whole cotents" do
      diary_entry = DiaryEntry.new("title", "words words words")
      diary_entry.reading_chunk(2, 1)
      diary_entry.reading_chunk(2, 1)
      chunk = diary_entry.reading_chunk(2, 1)
      expect(chunk).to eq "words words"
    end
  end
end
