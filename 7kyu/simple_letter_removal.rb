=begin
k is number of characters to remove
create a new array that is a Count of how many of each character there is
alphabetically

begin removing k number of characters, first 
	subtracting from character that appears
	in alphabetic order until that is 
	exhausted

def char_count(str) 
str.chars.uniq.sort.map{|i| [i, str.count(i)]} 
end

=end

# remove characters from a string
# example: remove_char "abracadabra", "a", 3    [removes 3 a's from abracadabra]

s = ""
def remove_char s, ch, count

.include? 


end

def solve s, k

  char_count = s.chars.uniq.sort.map{|i| [i, s.count(i)]} 
  
=begin
    
    s.map! { |ch| 
      char_count[0]
      k -= 1
		  
	}
=end

puts char_count
end

solve('abracadabra', 8)

