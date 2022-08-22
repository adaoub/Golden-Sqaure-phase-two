require "diary"
require "diary_entry"

describe "integration" do
  it "return all diary enteries in a list" do
    diary = Diary.new
    diary_entry = DiaryEntry.new("today", "Coding today")
    diary.add(diary_entry)
    expect(diary.all).to eq [diary_entry]
  end

  describe "#count_words of class Diary" do
    it "returns 10 when given 2 entries of 5 words each" do
      diary = Diary.new
      diary_entry1 = DiaryEntry.new("today", "Coding today was really good")
      diary.add(diary_entry1)
      diary_entry2 = DiaryEntry.new("yesterday", "Coding yesterday was really hard")
      diary.add(diary_entry2)
      expect(diary.count_words).to eq 10
    end
  end

  describe "#reading_time" do
    it "return an estimate integer of time needed to read all entries in diary" do
      diary = Diary.new
      diary_entry1 = DiaryEntry.new("title", "word1 word2 word3 " * 100)
      diary.add(diary_entry1)
      diary_entry2 = DiaryEntry.new("title", "word1 word2 word3 " * 100)
      diary.add(diary_entry2)
      expect(diary.reading_time(100)).to eq 6
    end
  end

  describe "#find_best_entry_for_reading_time" do
    it "return an instance of diary entry that is closese but not over the lngth that the user can read given the wpm" do
      diary = Diary.new
      diary_entry1 = DiaryEntry.new("title1", "word1 word2 word3")
      diary.add(diary_entry1)
      diary_entry3 = DiaryEntry.new("title3", "word1 word2")
      diary.add(diary_entry3)
      diary_entry4 = DiaryEntry.new("title4", "word1")
      diary.add(diary_entry4)
      diary_entry2 = DiaryEntry.new("title2", "word1 word2 word3 word4 word5 word6")
      diary.add(diary_entry2)

      expect(diary.find_best_entry_for_reading_time(3, 1)).to eq diary_entry1
    end
  end
end
