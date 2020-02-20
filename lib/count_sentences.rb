require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    period = self.split(/[.?!]/)
    i = 0
    while i < period.size do
      if period[i] == ""
        period.delete_at(i)
      else
        i += 1
      end
    end
    return period.size
  end
end