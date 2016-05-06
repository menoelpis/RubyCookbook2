# class String
# 	def word_count
# 		frequencies = Hash.new(0)
# 		downcase.scan(/\w+/) { |word| frequencies[word] += 1 }
# 		return frequencies
# 	end
# end

# p %{Dogs dogs dog dog dogs.}.word_count
# p %{"I have no shame," I said.}.word_count

class String
	def word_count
		frequencies = Hash.new(0)
		self.downcase.scan(/(\w+([-'.]\w+)*)/) do |word, ignore|
		frequencies[word] += 1
		end
		return frequencies
	end
end

p %{"The F.B.I. fella--he's quite the man-about-town."}.word_count