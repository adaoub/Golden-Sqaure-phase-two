# File: lib/diary_entry.rb
class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    @title = title
    @contents = contents
    @last_read_word = 0
  end

  def title
    return @title
  end

  def contents
    return @contents
  end

  def count_words
    @contents.split.size
  end

  def reading_time(wpm)
    (count_words / wpm.to_f).ceil
  end

  def reading_chunk(wpm, minutes)
    words_that_can_be_read = wpm * minutes
    start_index = @last_read_word
    last_index = @last_read_word + words_that_can_be_read
    words_read = @contents.split[start_index, last_index]
    if last_index >= count_words
      @last_read_word = 0
    else
      @last_read_word = words_that_can_be_read
    end
    words_read.join(" ")

    # `wpm` is an integer representing the number
    # of words the user can read per minute
    # `minutes` is an integer representing the
    # number of minutes the user has to read
    # Returns a string with a chunk of the contents that the user could read
    # in the given number of minutes.
    # If called again, `reading_chunk` should return the next chunk, skipping
    # what has already been read, until the contents is fully read.
    # The next call after that it should restart from the beginning.
  end
end
