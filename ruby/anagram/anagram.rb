class Anagram
  def initialize(anagram)
    @anagram = anagram
  end

  def match(word_list)
    result = []
    word_list.each do |word|
      if word == @anagram

      elsif prep(word) == prep(@anagram)
        result << word
      end
    end

    result
  end

  private

  def prep(word)
    word.split('').sort
  end

end