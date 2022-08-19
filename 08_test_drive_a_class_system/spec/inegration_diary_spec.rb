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
end
