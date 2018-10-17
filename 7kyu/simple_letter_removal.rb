=begin
In progress:

In this Kata, you will be given a lower case string and your task will be to remove k characters from that string using the following rule:
- first remove all letter 'a', followed by letter 'b', then 'c', etc...
- remove the leftmost character first.
For example: 
solve('abracadabra', 1) = 'bracadabra' # remove the leftmost 'a'.
solve('abracadabra', 2) = 'brcadabra'  # remove 2 'a' from the left.
solve('abracadabra', 6) = 'rcdbr'      # remove 5 'a', remove 1 'b' 
solve('abracadabra', 8) = 'rdr'
solve('abracadabra',50) = ''

k is number of characters to remove
create a new array that is a Count of how many of each character there is
alphabetically

begin removing k number of characters, first 
	subtracting from character that appears
	in alphabetic order until that is 
	exhausted

=end

# remove characters from a string
# example: remove_char "abracadabra", "a", 3    [removes 3 a's from abracadabra]

def solve s, k

  char_count = s.chars.uniq.sort.map{|i| [i, s.count(i)]} 
  print char_count
  s_count = 0

  k.times do
    
    char_count.each do |letter_number|
      letter_number.each do |letter, number|
        if k - number > 0
          s.delete(letter)
          char_count.shift
          char_count[letter_number][number] = k - number
        else
          char_count[letter_number][number] = k
          
          while s_count < s.length
            k.times do

              if s[s_count] == letter
                s[scount].delete
             
              else   
            end  
            end
          scount + = 1

          end


      end
    end
  end
puts s
end

solve('abracadabra', 8)

