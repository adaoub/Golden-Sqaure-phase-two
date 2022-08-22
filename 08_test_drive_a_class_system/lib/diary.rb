class Diary
  def initialize
    @list = []
  end

  def add(entry) # entry is an instance of DiaryEntry
    @list << entry
  end

  def all
    return @list
  end

  def count_words
    total_words = 0
    @list.each { |entry| total_words += entry.count_words }
    return total_words
  end

  def reading_time(wpm)
    (count_words / wpm.to_f).to_i
  end

  def find_best_entry_for_reading_time(wpm, minutes)
    readable_entries = @list.select do |entry|
      entry.reading_time(wpm) <= minutes
    end
    sorted_by_longest = readable_entries.sort_by do |entry|
      entry.count_words
    end

    sorted_by_longest.last

    # `wpm` is an integer representing the number of words the user can read
    # per minute.
    # `minutes` is an integer representing the number of minutes the user
    # has to read.
    # Returns an instance of diary entry representing the entry that is closest
    # to, but not over, the length that the user could read in the minutes they
    # have available given their reading speed.
  end
end
