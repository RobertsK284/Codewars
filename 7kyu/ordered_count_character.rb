=begin

Count the number of occurrences of each character and return it as a list of tuples in order of appearance.

Example:
ordered_count("abracadabra") == [['a', 5], ['b', 2], ['r', 2], ['c', 1], ['d', 1]]


  str.each_char { |letter|
    puts "#{letter} \t#{str.count(letter)}"
  }
=end


def ordered_count(str)
	lettercount = []
  str.each_char { |letter|
  	lettercount << [letter, str.count(letter)]}
  return lettercount.uniq
end