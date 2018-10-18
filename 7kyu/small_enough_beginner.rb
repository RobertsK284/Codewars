=begin
You will be given an array and a limit value. You must check that all values in the array are below or equal to the limit value. If they are, return true. Else, return false.

You can assume all values in the array are numbers.
=end


def small_enough(a, limit)
  a.each do |number|
    if number > limit
        return false
    end
  end
  return true  
end

a = [66, 101]
puts small_enough(a, 200)

b = [78, 117, 110, 99, 104, 117, 107, 115]
puts small_enough(b, 100)