require 'pry'

class String

  def sentence?
    self.end_with?(".") ? true : false
  end

  def question?
    self.end_with?("?") ? true : false
  end

  def exclamation?
    self.end_with?("!") ? true : false
  end

  def count_sentences
    arr = self.split(/\.|\?|!/)
    arr.each.with_index(1) do |x, index|
      if x == ""
        arr.delete_at(index)
      end
    end
    arr.count
  end

end