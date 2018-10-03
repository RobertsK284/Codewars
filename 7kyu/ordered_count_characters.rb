def ordered_count(str)
	lettercount = []
	str.each_char { |letter|
	  	lettercount << [letter, str.count(letter)]}
	return lettercount.uniq
end