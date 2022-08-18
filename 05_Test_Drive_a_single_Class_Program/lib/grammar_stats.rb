class GrammarStats
  def initialize
    @correct = 0
    @incorrect = 0
  end

  def check(text)
    @text = text
    if text[0] == text[0].capitalize && (text[-1] == "." || text[-1] == "!")
      @correct += 1
      return true
    end
    @incorrect += 1
    return false
  end

  def percentage_good
    return ((@correct / (@correct + @incorrect).to_f) * 100).ceil

    # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.
  end
end
