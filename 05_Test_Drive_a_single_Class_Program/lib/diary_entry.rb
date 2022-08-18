class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    @title = title
    @contents = contents
    @furthesrt_word = 0
  end

  def title
    return @title
  end

  def contents
    return @contents
  end

  def count_words
    return @contents.split(" ").length
  end

  def reading_time(wpm)
    fail "wpm can not be zero" if wpm <= 0
    return reading_time = (count_words / wpm.to_f).ceil
  end

  def reading_chunk(wpm, minutes)
    words_can_be_read = wpm * minutes #words that can be read
    start_from = @furthesrt_word
    finish_at = @furthesrt_word + words_can_be_read
    word_list = @contents.split(" ")[start_from, finish_at]
    if finish_at >= count_words
      @furthesrt_word = 0
    else
      @furthesrt_word = words_can_be_read
    end
    return word_list.join(" ")

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
