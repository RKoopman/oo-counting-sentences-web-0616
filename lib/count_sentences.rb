require 'pry'

class String

  def sentence?
    self.end_with?(".") ?  true : false
  end

  def question?
    self.end_with?("?") ? true : false
  end

  def exclamation?
    self.end_with?("!") ? true : false
  end

  def count_sentences
    self.split.select {|word| word[-1] == "." || word[-1] == "?" || word[-1] == "!"}.length
  end
end