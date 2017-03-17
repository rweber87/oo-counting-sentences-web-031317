require 'pry'

class String

  def sentence?
    self.end_with?('.')
  end

  def question?
  	self.end_with?('?')
  end

  def exclamation?
  	self.end_with?('!')
  end

  def count_sentences
		punctuation_mark = ['.', '!', '?']
		sentence_array = []
		idx = 0
		
		self.each_char do |letter|
			if punctuation_mark.include?(letter) == true && punctuation_mark.include?(self.slice(idx + 1)) == false
				sentence_array << self.slice(letter)
			end
			idx += 1
		end

		sentence_array.length
  end
end